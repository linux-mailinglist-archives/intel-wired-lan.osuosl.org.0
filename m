Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCE2805EA5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 20:33:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0EBBB435D0;
	Tue,  5 Dec 2023 19:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EBBB435D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701804797;
	bh=vPqbunM/C36qxC8mUJZlMOmVwJMJewb7MhfOoUFznMg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DMH0hUvyHavBupnKRyXKSq3+jp8HlzoXb3vTBiijt+1zTuTHM9WsPqz3cx1qx/75d
	 tUMmI/Wt4BF1IqJBHE4qOKP6YEwOUZyWGpmT3BqMxZFoFRocRwx1ViRlXBty46iMi5
	 9GSfFDSGV0W0U6BnTi2LLmoDgvoRziZi0ZpKxh+HzAn0b/P1o1tVI+DglE5SbtRKue
	 UbgMxdhB8UvHhbyosQ1oqb2JXVRI4DxWvvEh6AxhLtx8qxx1teeIiYu78RAMq1qdZh
	 Z9jkZ2bMPxp6jpqJRLXNM8juA3GXn3nuuF28HDEWx1Yi8ugE58//ROUTTDgMANtufJ
	 Cd66GRSSPx8PA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emQgmXKd82eH; Tue,  5 Dec 2023 19:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B089435A1;
	Tue,  5 Dec 2023 19:33:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B089435A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 263681BF363
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFD27613D8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:33:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFD27613D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 50w4xXC7XKFc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 19:33:08 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4A00613D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4A00613D6
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAbAF-0000000GWCC-2rbp; Tue, 05 Dec 2023 20:33:03 +0100
Message-ID: <1d986c73c1d39b0cced7d8d2119fba4b2a02418b.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Marc MERLIN <marc@merlins.org>
Date: Tue, 05 Dec 2023 20:33:02 +0100
In-Reply-To: <20231205024652.GA12805@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org> <20231204212849.GA25864@merlins.org>
 <20231205024652.GA12805@merlins.org>
User-Agent: Evolution 3.50.1 (3.50.1-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=SkMzdOaiE/tH3KLyUGpebGooZ6m/kC6AAcd35NxWXmA=; 
 t=1701804788; x=1703014388; b=Q/Eo+FEbKPrfOziPHy5XnZPDgWyqEAoY9xNRUGnOrPSvk6R
 aJoy7+UYUfnwneXoGIt5udVb0G1ZB2MGZbmXZjkUlqbDNoapBOfwj3ZCYPoOrpcUnFAfF0sjKxAT7
 oMW9yyD6H2hYTpiKy2wgjCTBQmq6YxfVA1W0ODxGnLCF9hmIOQEHBzS1kRaz0w3z2rrFlG07rQvta
 czoMk/VHCCGHUEHAoz9FaYjmfkIc05xpt6URXvwHvoYaBQtlC7rDkPg+jwl4u/V+h77iOAdXSCNev
 lAr6/sL30Zwx2SVTyBBV8JgkSkTJH1LLNVZ1brrjRU5IR93TudPfhqp/kv8Zqupg==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=Q/Eo+FEb
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-12-04 at 18:46 -0800, Marc MERLIN wrote:
> 
> [13323.572484] iwlwifi 0000:09:00.0: TB bug workaround: copied 152 bytes from 0xffffff68 to 0xfd080000
> [13328.000825] iwlwifi 0000:09:00.0: TB bug workaround: copied 1272 bytes from 0xfffffb08 to 0xff42c000
> [13367.278564] iwlwifi 0000:09:00.0: TB bug workaround: copied 1328 bytes from 0xfffffad0 to 0xfec41000
> [13389.737971] iwlwifi 0000:09:00.0: TB bug workaround: copied 572 bytes from 0xfffffdc4 to 0xff091000
> [13389.860480] iwlwifi 0000:09:00.0: TB bug workaround: copied 148 bytes from 0xffffff6c to 0xfe412000
> [13393.435354] iwlwifi 0000:09:00.0: TB bug workaround: copied 360 bytes from 0xfffffe98 to 0xfedcd000
> [13409.827199] iwlwifi 0000:09:00.0: TB bug workaround: copied 1348 bytes from 0xfffffabc to 0xfd057000

That's fine, just working around a HW bug on 2^32 address boundaries.

I had a patch a long time ago to make those messages not appear ... not
sure where it ended up.

johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
