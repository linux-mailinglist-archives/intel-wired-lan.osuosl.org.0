Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454B3715375
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 04:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28C2341D1C;
	Tue, 30 May 2023 02:08:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28C2341D1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685412533;
	bh=7kItB8IwdQxVA3WU1Dr+m8+Yx4uoaqPKMQANbBYAHck=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w7/6xQgHYsY7s/hSH+3l4LSqSaBwtfERPbUE2QEZyHHOlerOwGwDqPl9qzz4BkK8a
	 56LiQmuBK4LMfISWpzMD5eC4Gr/Gqc4UgSdc6ur+iPu30DfTN0pe+X1wzY7tjEHadK
	 oCNH8RgMcH6LspqhiW9ijwvlJMlIog35bhurG49OwUnNDFwpgvHLMbhafvQ6uU8Gjk
	 WsHMJOfuVUZ3/x2GfLU0XhQwKCCDC58Yg9dyKK///Prdf2QlOLlb8he0+t6o5/QqDw
	 ibKd7VkDRY3BPs2cOaEmoaKF+zRVTQBNJEulYIWa9kT7OpIBt9KDvIiFzqLw5ax6Ap
	 G57p6mzLj/xbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPa-VAF5bdIH; Tue, 30 May 2023 02:08:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10F83404B0;
	Tue, 30 May 2023 02:08:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10F83404B0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 599B51BF5E6
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2DC49404B0
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2DC49404B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hqUZj0e3HznX for <intel-wired-lan@osuosl.org>;
 Tue, 30 May 2023 02:08:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B4A740242
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9B4A740242
 for <intel-wired-lan@osuosl.org>; Tue, 30 May 2023 02:08:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 932EA618EA;
 Tue, 30 May 2023 02:08:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A00ECC433D2;
 Tue, 30 May 2023 02:08:39 +0000 (UTC)
Date: Mon, 29 May 2023 19:08:38 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Message-ID: <20230529190838.3c916396@kernel.org>
In-Reply-To: <20230529173357.jpqun5o2z7lebreb@skbuf>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
 <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230529135949.wfrcll3t7nkgna45@skbuf>
 <20230529173357.jpqun5o2z7lebreb@skbuf>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1685412520;
 bh=lK4oM0WA18QgVSNxAU/eJckB2M6SS5lcEbtTKjLTCRA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=U61855Eg7yzsby/R8kWvIE7TAYHkHuNHGVUdIvZGluzGy6hf+6W22/VgdB0OOaO6X
 JPtXAT0xn+qOjFVswPp8f80kZJulIu3eAkPM1+6T96ET0dYt84aw+Nyhl2Ft9jmmfL
 uUchAM7oo07evTbVUMBqBVurakXCxRp7LBSQf1hdf4ag44JoMoNXg4/cPIBk6UPat4
 1FDPHorPBjj12DDtpCTemCtzu7Gi94ITHuAYEq1uZPzo77HaA0bDW2XUbWaYTCa4oL
 hQlY3Mfxzur93ydp3u/xF80eHOoM5cvWg3GTejq3p4xhGhh0R5op5Rn860xEY/ro2y
 7+RhjwOZ1fAGQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U61855Eg
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCAyOSBNYXkgMjAyMyAyMDozMzo1NyArMDMwMCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6
Cj4gT2theSwgZGVidWdnaW5nIGRvbmUsIGhlcmUncyB3aGF0IEkndmUgZ290Ogo+IGh0dHBzOi8v
Z2l0aHViLmNvbS92bGFkaW1pcm9sdGVhbi9saW51eC9jb21taXRzL3NjaC10YXByaW8tc3RhdHMK
PiBodHRwczovL2dpdGh1Yi5jb20vdmxhZGltaXJvbHRlYW4vaXByb3V0ZTIvY29tbWl0cy90YXBy
aW8teHN0YXRzCj4gCj4gSmFrdWIsIGlzIHRoaXMgd2hhdCB5b3UgaGFkIGluIG1pbmQ/Cgp5dXAs
IPCfkY3vuI/wn5GN77iPCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
