Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4336C58C65A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 12:28:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4341F409F2;
	Mon,  8 Aug 2022 10:28:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4341F409F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659954494;
	bh=5ntPlT1PVVAhu5l9P5ARBnh9fiF68s+8a7bfVvJGqIw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F3r3GMqu4NkRRVtjEucUBRdiYeE8g1UJI92k7fZ8i0eoDlyUFXZ3I7yMKoCkCUZl+
	 pPn8BMCJhusCoKDTT0Hmzerw6KFxhLbVkVMZ3wadx36iB6kSOb8+GIAMd1n0IcLrk1
	 R+KZgAxDvvESHIcB7j6MYhDk+bU8OXemBCSyEUiIpC8hduaJSdlpCiKlBpGduxoKZB
	 bJirgA3phwpqHwgYiV6dJWQDZ4z/kmxlwMy163ss6X1Uj+36UTG5bJ1P8kV9waX8tZ
	 wNJKOhv69BsFGXMQqSjstIh8Ca8LIHfQL4JB8zFGdoKv85+OZWeSTnIn/UG50iRF5k
	 3DZ71E5KvE7sg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7dCdTFtINotO; Mon,  8 Aug 2022 10:28:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DF1F4097F;
	Mon,  8 Aug 2022 10:28:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1DF1F4097F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 549CB1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 310B740347
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 310B740347
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QqRdMn7jZ7Na for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 10:28:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8041F4007F
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8041F4007F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 10:28:05 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 39D6B61EA1928;
 Mon,  8 Aug 2022 12:28:02 +0200 (CEST)
Message-ID: <c9576243-0cb8-c268-2518-b68c01ca076c@molgen.mpg.de>
Date: Mon, 8 Aug 2022 12:28:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.1
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20220808102421.1651482-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220808102421.1651482-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove IGC_MDIC_INT_EN
 definition
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sasha,


Thank you for the patch. Why not make the summary:

> igc: Remove unused IGC_MDIC_INT_EN macro


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
