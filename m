Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC577E101B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 16:33:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A017140A67;
	Sat,  4 Nov 2023 15:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A017140A67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699112035;
	bh=QzG9JHxorCZhrAXyptSuTdYDCCwvecTpLVIJolMu2R4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CXvAfDIZcVEd/L35QKE8mswqyBVarTlU1/AnpKpAiYqRDtiDDkMtJk59mkrJdOkA1
	 YfB4LmTjKHEcdFI4j7EYbhZZLDpkkOVJWM7ucWNElMOA9nyx303kX6rdjnaZx4pDEr
	 QJ6fJP0YzlR5isOQMcIsnb0mHboUM6NepNXAbM7hT2UkOhYwVPrnAw8hTSwNockzOo
	 fJ9eC483vD9jWrECC7sj/2et8xss7p/WS0HoTYbg3APhxwqQeEN+ZY1V/uzhSNnmfj
	 d5ATyzwumeMoo6U1Ox7TX5oq35BNxzHZrB2R2zMJkCoC1WK+UUNnOYshP9qiTrcfSV
	 ekONnXCb2t4+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z2fEQQQJF7at; Sat,  4 Nov 2023 15:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4934240A60;
	Sat,  4 Nov 2023 15:33:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4934240A60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99F231BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71E2F41E81
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:33:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71E2F41E81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NPRs0lLkBQzd for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 15:33:47 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9DF1E41E78
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:33:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DF1E41E78
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 66C5360472;
 Sat,  4 Nov 2023 15:33:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBCF9C433C7;
 Sat,  4 Nov 2023 15:33:37 +0000 (UTC)
Date: Sat, 4 Nov 2023 11:33:31 -0400
From: Simon Horman <horms@kernel.org>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <20231104153331.GJ891380@kernel.org>
References: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231102155149.2574209-1-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699112026;
 bh=CneH2QCNOFwdP3vrdBROQilhh3jKjpF9b3jeDVy9MwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SGUWWvSCp6S+YsbOpxdxMXZS7IG5+uckjzR6vI86t8b1AimcNoEhQ1wPFN577zfZW
 9ht3nhJFpqZlqORI5uTTqfSahmBazKbq1VEO5B8ERzj2D/kfZv2wJapWPXPLtWitIm
 CX3E5XXgGuBFUcjYelg6j7Qy+PGd4OnsE4QEzECVq13S6dw5NDC2/dAnBqmIGz73f1
 kYwz7N4rAXTIxn2LoP1H25I1UasXFMVIeLi7LEO/dino0YkJpifEUr4kj96r5zUEa0
 zZQv6rM/AGG01x3M4m7llmeLkLN4dno1sW26ESLibYUtCP9l+W1Fgnf4GVDmsiFv+5
 Rx/TsI2zzkZdg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SGUWWvSC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Reset VF on Tx MDD
 event
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, lukasz.czapnik@intel.com,
 intel-wired-lan@lists.osuosl.org, Liang-Min Wang <liang-min.wang@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 02, 2023 at 04:51:49PM +0100, Pawel Chmielewski wrote:
> From: Liang-Min Wang <liang-min.wang@intel.com>
> 
> In cases when VF sends malformed packets that are classified as malicious,
> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
> for several minutes being unusable. This behavior can be reproduced with
> DPDK application, testpmd.
> 
> When Malicious Driver Detection event occurs, perform graceful VF reset
> to quickly bring VF back to operational state. Add a log message to
> notify about the cause of the reset.
> 
> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
