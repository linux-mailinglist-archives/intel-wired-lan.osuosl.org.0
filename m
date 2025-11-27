Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE657C8E152
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 12:44:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C12D4114C;
	Thu, 27 Nov 2025 11:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DZZdbRhpRMz1; Thu, 27 Nov 2025 11:44:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB52A40FCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764243885;
	bh=x7qg6Jem7VzlJyrA3FdqmkHriCBJzkr3Z7KK5sYAA1g=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C6or44+IXjcQGpUpKHnCvHDfHfbMxVFJWjfqQeFCuDQgd9t1VK/Ji9OYAev/9PU6R
	 SVDapMVVFDInSMvJgHaPr+av4IZ/XuqPFpKhqYl0X/Q6Odk9WIfcTtFw8lHFWNM+RM
	 MC2QrymHw4t3OiWVTzMzGOP1oZ5aQ9N2oDEeuYlzeFislLyoTsGTfdvD2pQU5MO22g
	 MlorUvAFvt6OY3F0l5u8zMonntP2nMGFi1ISuwU3vJSLpUyN1xvLP64TJL/qg292EJ
	 5QdP4JQqf2mEW2GB++o9JJNoSm6r3soVBdJ6TVBACovxTJWt0AzNkv9e3OH83TEEtG
	 WBclDG6+6gWJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB52A40FCF;
	Thu, 27 Nov 2025 11:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F0A75708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2DA04028F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:44:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwzCGDdnuRiu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 11:44:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E72BB4019A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E72BB4019A
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E72BB4019A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 11:44:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 4CC7D43EF5;
 Thu, 27 Nov 2025 11:44:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D691CC4CEF8;
 Thu, 27 Nov 2025 11:44:40 +0000 (UTC)
Date: Thu, 27 Nov 2025 11:44:38 +0000
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <aSg5pg9aLwmiVR6G@horms.kernel.org>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
 <20251124184750.3625097-3-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124184750.3625097-3-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764243882;
 bh=8B3PWkcneEp8j4f+naDD6Gjqui7eqqG/efW5UvE2XH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QCLe2OIuIK9wjKClO/r9uyaeQ15V7N/qN6sDhYFWeDI2Z4Zp4gK4FPsONwLX2rwcH
 tfzYe44SX9LSCUgFA2ov2A6XZkPitg2cUqReAIFJTKI4A0miQkv0MvTki1qmW589xU
 VI2y2WMVHhOdmyEvY/IiTPxKxJRQvVaxWP6g417Yxuila1C5k6D4KfdGBGm6mcLU5C
 WuIG38jrSYsix3D1s3TXIcupJ1xXainImFuTwRLcD/xXwKUG7vTL24qOIHF58NWwM3
 MqtfMovzdV99mCiWKOg1zJIlWcLzS51EHBRLzV+Kyb85OQWObyeG+kZ7PoftguOMHx
 9Zb/34wrUnRRQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QCLe2OIu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 24, 2025 at 12:47:49PM -0600, Sreedevi Joshi wrote:
> RSS LUT provisioning and queries on a down interface currently return
> silently without effect. Users should be able to configure RSS settings
> even when the interface is down.
> 
> Fix by maintaining RSS configuration changes in the driver's soft copy and
> deferring HW programming until the interface comes up.
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c

...

> @@ -424,7 +429,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
>  
>  	if (rxfh->indir) {
>  		for (i = 0; i < rss_data->rss_lut_size; i++)
> -			rxfh->indir[i] = rss_data->rss_lut[i];
> +			rxfh->indir[i] = rxhash_ena ? rss_data->rss_lut[i] : 0;

Hi,

I feel that I am missing something here.
But I would have expected rxfh->indir to be populated by rss_data->rss_lut
regardless of the port is up or down. IOW, I'm unclear on why
0 is reported for the indirection table if the interface is down.

>  	}
>  
>  unlock_mutex:

...
