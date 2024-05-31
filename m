Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6418D68E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 20:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D65840278;
	Fri, 31 May 2024 18:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GDPhzmJs8g-A; Fri, 31 May 2024 18:18:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D132840197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717179517;
	bh=gEi9i0EHz11987IKuDppqXsHyg1hsn1tYxoQ8DK3+YM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v0hyVcJ7OeHwh3vn5rAiTRULbJhyecs5/hpvF5pcYLHwDk2Z5JYYTIkcLVi+wd8vo
	 /pDMPz+Gxpqu1tJi3k4LxKhZ5f39IVgB4u+v7EnBx0ExhKPnesyAIIe/5Ztxn1rMLl
	 mSVWMn8LAoxyfCuyxdRS4op3S6pFsH7pxN8+msC9rh+OuS/oNA2J955+eTQjolP0Z9
	 wmw9HHNSzHZtNH2msSDuiwLsvmN1HRGozwNJqJLBVLC/tiPZQWsJPKLDZLu4DmdhnN
	 7TAoLCxx7mnynfI4pau/0cd8LKIEpkPdYJ6tUrNcx9ealNe9cuOkA6JRIvZ4O7PKxb
	 mAbxiCdNwyF2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D132840197;
	Fri, 31 May 2024 18:18:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13CA81BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C5A741791
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:18:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1O6GTm6BPfcF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 18:18:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4D635400D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D635400D1
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D635400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 18:18:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 37415CE1C60;
 Fri, 31 May 2024 18:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9138C116B1;
 Fri, 31 May 2024 18:18:27 +0000 (UTC)
Date: Fri, 31 May 2024 19:18:25 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240531181825.GP491852@kernel.org>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
 <20240528043813.1342483-15-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528043813.1342483-15-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717179510;
 bh=jL3OHJfz9VQuTuxrqsufgzCfc+flA/n/Pq7F1usTcUw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L3KFMW2IShZGgcNRztib1wjGTsS2vc3rASPn+Etx2duuLGenICUqgB0i9zBb5Aolc
 Rl7DtAOsTfzsKrhm5OZIm8Fkyh3aKHqrpOtxhu6L0HWC13vTkrU+Einbz08L8/RtSa
 zWBMGDRZ+A1V9L5Kv0NfcJUiTNgH2Nv9RCXKcKl57ZGjAASllOtL8HoeyqUSe4Soti
 8vi7EGZhI4udwmTvci2cLp/NCdK45RltsSdI1/ZauOXWyI0FB+07dWAM+6VLmZaiLv
 9EwoJEcjLmlxnH2Sa/xO9R8Kz4Nq8PU2Tr4WY52KpCvsPK67N1BqV5sPWqjnySpZIF
 fYwz9AJSFtF5Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=L3KFMW2I
Subject: Re: [Intel-wired-lan] [iwl-next v3 14/15] ice: basic support for
 VLAN in subfunctions
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:38:12AM +0200, Michal Swiatkowski wrote:
> Implement add / delete vlan for subfunction type VSI.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

