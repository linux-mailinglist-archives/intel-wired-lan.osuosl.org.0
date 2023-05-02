Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 894956F4722
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 May 2023 17:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFA9E83B20;
	Tue,  2 May 2023 15:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFA9E83B20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683041263;
	bh=h2pC9frOgsrejikGIlt9WNx8kz9tWRP53jAkBC4stX8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sNLe6bl224OFgkNJZKVLmpJ8ZyBRDbEy7HN4pzZoqkZIfhVSywqt46PROo3fQpMOc
	 ZSEi7rJOGdu/r+vsX3VsF/9CxDN2ikaJ2rrPCrXZkliMau9U+RlbQAxfvgYVKGSj//
	 scXv0UAybKOy4qq9TmMb04jmGwitNvSKeL4ZFJYe73p7AwE2xtpCYda+ZwzfQ69MM7
	 vbKm8rE371+IOaHuUnmtX2Fm2UeTQlfw1LpM/GuX7HiYUO5zi1zHEbRVeM3bYZVSo6
	 kU3+c8elronYSm6WmqhZiKNXbc4TCVNSwmqvvFbUnW0zMijo392vOdujx4hXcQ/LZc
	 +t3GWUW0OXcGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K5k7LZjohyxO; Tue,  2 May 2023 15:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E29D83B1D;
	Tue,  2 May 2023 15:27:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E29D83B1D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C74C1BF41B
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 15:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C89536145B
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 15:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C89536145B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-pMU0po3QJn for <intel-wired-lan@osuosl.org>;
 Tue,  2 May 2023 15:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 259CE61452
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 259CE61452
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 15:27:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 11766625B7;
 Tue,  2 May 2023 15:27:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27247C433D2;
 Tue,  2 May 2023 15:27:35 +0000 (UTC)
Date: Tue, 2 May 2023 08:27:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230502082734.0f2f88b1@kernel.org>
In-Reply-To: <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683041255;
 bh=xfemCpT1H5JF2HLL3+PuRZuoguy1S3ObYjM66SdSCpQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pk+33KYk8DB81EqjtUwv4yvpHYp93+PvdYKT2sDZ1TqVtw9zcW6J/03ruPhpp28tk
 s92WKQs6mSqsCFweESuwdI8Dcvwr/ZVIgi9clkPJGK3bQZUfW4kg1dHWwFCIj6QXoP
 LY4RKebJsPWDzcHzs4kKdqbJ4hZXoe8rKGiPqMzGmusbX1uVG/mgTSYEwyl+KH65+/
 Axapls9oiDoHoRkHUtadLUp3zFR2ymgPP4a6LWyyGaOkJQFtvMdDjBRpPMuiSfZAuT
 oJpD6J2j4+H6mDaPKBx7QDnnREqqeKL9Ij7sGmRuJNPNW6/wtDcE0I2MHgqjFghjDR
 Af2ah6sdtiyow==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Pk+33KYk
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2 May 2023 01:47:30 +0000 Zulkifli, Muhammad Husaini wrote:
> > Seems like something that should be reported back to the qdisc which
> > configured the gate.  
> 
> May I know which qdisc stats that we need to reported out? Is it gnet_stats_queue?
> IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.

Yeah, definitely not gnet_stats_queue, the qdisc used to configure 
the gates can have its dedicated super special stats.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
