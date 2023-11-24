Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F457F7238
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 11:59:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE9D361506;
	Fri, 24 Nov 2023 10:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE9D361506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823592;
	bh=USmqyWD4kSXZgkQlx/PbcGLGqdg6UG+y9jR8jwr+B5U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4N8Vhq5ZUCnsVdCJ+i9Rw2zi7F1qu8O/7thnv/s7Ze1xANBdz3x+wvNdtLytBGUnO
	 DAyyBk4FctHMsMxw22/jtg7dAKMenv+lJPSJpPKBR9CunpcCOtKFCwJfFj0YZJjXbk
	 tT1PfwgxKV0ol0jKguAtsaeGCoqlVH74k1KI9nU5wsbRssxfJsE0SBuq9GmJLANXTQ
	 t1Beici+hJg8ygrtz0loI9t0kNqosAQuGuFLNlVi4DNMAykOSt/pRejrHL3N90MJxU
	 9rP8zSwEpva+W3F3bYE6CA9umxaVLTOZWgci2UkH2Av6s63UqUNsUzF+MmwNIAwrX4
	 eZL6JDxohG6+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbzpDfUMCNZ3; Fri, 24 Nov 2023 10:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACAFB614FD;
	Fri, 24 Nov 2023 10:59:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACAFB614FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7351BF20B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72084401D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72084401D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxLWYRbOuKIu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 10:59:44 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E15640132
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 10:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E15640132
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id B6835B83011;
 Fri, 24 Nov 2023 10:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21B2BC433C8;
 Fri, 24 Nov 2023 10:59:40 +0000 (UTC)
Date: Fri, 24 Nov 2023 10:59:38 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124105938.GB50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-3-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-3-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823582;
 bh=gaihbOYsDjJEzW3sdoefJ8zAs95axkC8K2co4ZBLBTg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YqcNY3E8DvTKpBjFL/rV7BP8xneZKn8npARXPXAIrsJerP33mzqfh+4pgp7JDbs+2
 snPlUXpoY0nG9JCDBJieA4WgXPDX5UlE4RalBMqFcb1+9u9HQ6v8QC0q3YpeqeBCGu
 JATjknuZPT2CQDTGqwpLhC86vAzYhVWAjBjWDgIAOg63cVE70D8BjogyeeKE4oK6Hy
 fWFSKFayVrdLsQ4f8ezReCrC/p6A+mPPKz1H4r8z+JFPY1w/cvAE4hg17pBWiajYRt
 48CqMfUzoc82a1mws7GaicuqZ1V215xjMRB7sflLUShbL8m0XAI8uw6EkLOwUNmSpL
 KyDvY23uI0FhA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YqcNY3E8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 02/13] intel: add bit
 macro includes where needed
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:10PM -0800, Jesse Brandeburg wrote:
> This series is introducing the use of FIELD_GET and FIELD_PREP which
> requires bitfield.h to be included. Fix all the includes in this one
> change, and rearrange includes into alphabetical order to ease
> readability and future maintenance.
> 
> virtchnl.h and it's usage was modified to have it's own includes as it
> should. This required including bits.h for virtchnl.h.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
