Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45025886171
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 21:06:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26C8D82291;
	Thu, 21 Mar 2024 20:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IEMerqs0yPzU; Thu, 21 Mar 2024 20:06:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E65E2822D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711051579;
	bh=HP94er+kV3GasVjf02u3F9ZYkvcXZGx9D3xC+m1al/k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3h+g15zqJQ760s7+t/rlwhtV7PEGOiHE0IkujkeN/G9p5Z9JldBaPiKb2rt7mNHFL
	 vxglaYWJ7B/A46/cOouRyJ0k9XNeUsr8AKZVldubjjzH3ZHtSMt86O53wr7O128cLR
	 MBN7tJYM4U8E+5/fmryCbyOjXajGgMwFjfJFBWPMoU+qZNfoudAUe9EHHFCK5eqlni
	 Qs9IIqZHNuqVqSSZv30W2EvTDnHZd6KH4IGAcjVmvUnhJ5287vBiM1DIQax4x+qiCn
	 j2AwkTrej+PCp33dHkpROyVMCxuu5C42aLO+be3ApLa51qV2x7YOQB5xYxcrNchOpi
	 IgEVLp0jL1T/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E65E2822D2;
	Thu, 21 Mar 2024 20:06:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F10D1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A4CC608DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0YsvtYJDDm3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 20:06:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.14;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE631608BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE631608BC
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE631608BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 20:06:13 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M8C07-1rjnlJ0KNn-00CkW1; Thu, 21
 Mar 2024 21:05:38 +0100
Message-ID: <0d7062e1-995b-42bc-8a62-d57c8cb588ee@web.de>
Date: Thu, 21 Mar 2024 21:05:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:f30MnlCTiWPDt1zm7PlXXn3w8Vl/ZOlATngou/8kstVjQ3Vtjmc
 NwEr7iAZYqjF/kCilniZdpv/ZLPs3A65OoLDtTMhNEIpAf2F3c8X9j/zin2Z/6rxkVK/bL3
 Wd7ZA7beckUcLMwzclkVVdoZI80PLUcb7qXLoHdtCIh0JsPV3Ctj3JBF/3V2PoYrWqycho0
 7onxYACnS19+yZ9c1V4Ag==
UI-OutboundReport: notjunk:1;M01:P0:vSwOZJur5Ns=;wS5OBqL4d9dCxlOuH0VOMqS/4fF
 HPZwiGCb9Nlttel1o32s4uj/FZR0A0C6SNqOHaJSVg9ggtffeyg58NdSiRKIJfsKDDJSi3xdh
 0YkTlLhDYYssZ8YCy56Ouhf9QIopO9Q50b19LqUrhttvuMDTrhzU5SDNOe+J0gs6Nk0Rmeq9Y
 mvlNydIjXKpuXhzRs30scWOYVCbB8CxB06a26pzJUOh2JyCCKqq8HCPd4Ma6sWoBKM4LnhsT5
 NE8XMeS2h4sLzP8HcTd+D0RZJkrS+ZLlvMpLCIo49solQBCeySd7mwOU4M3eqv7sgj3O8CcGQ
 qZ+ekFU182m22nN2bkM8q9nuJg2koKKKzkxY6e5XJPqGSS2Mco0CbNM2rFu//KXZxgq2Z4vRU
 HL9L6wgBsg669W3Q2jeTE7sTtQFNC5ITlZFfnpRbGWGA9aC11gKoyULFqzmMk2xIYLR21xBzs
 HjWRLx8ZhSAvwtZztfSfWlP5RUf5pKQfPt5EBu0JO61eSCgQ1yF5Qq936VuF1HUO1ihs69J/z
 MSBYfX3hKpefhCCMl+wceKpxUFjtHuUJncwIXYQyZynPKTaXhlMu1gEzB7OyjP3MDjikgpgV5
 ljuHMeLllwYLKw9id/h1cypsNLg7s1o3IiK6/7ToPXGn+UGUfTf3qcpQLLAb8G9NV6viALNdk
 mI2L8Dqr1rJSfonWVMHFQ2AtKrik/lGmOV7iH1UghickcXvIvGwBTkK3FJHKCaa1gqZ17Nam+
 0TSNIHGC719GGxYr9suh+LwAY4S/SLY3u1NcBL2Ax8zWoaafV6y9s0gKfapr3BQ6MPdSk4wtW
 30APu4CHbyD9mLL68vAJgE6E1rsWASCzEflgAOaGREIHw=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711051538; x=1711656338; i=markus.elfring@web.de;
 bh=HP94er+kV3GasVjf02u3F9ZYkvcXZGx9D3xC+m1al/k=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
 In-Reply-To;
 b=fqcHwKs0Z9CmLmHt7YoDokHEsZL4T4a+q94cc/relg9REm3EpXqYzNFgy0Sd7xli
 bi2aKmCEYhRbcsq0L9ewnsH0llPKc4UfUvkEx51h1jD5sfsrJ6uZdXeYZGR7RpUJG
 np1ABDyBsolp78K1lKCcb6oiO72t1Sdar8GRX+q5ziLhWFIOX0lORTzDNUYZYtmk2
 uUepsdGtmGYAIvf0CsgXQgrxW3kEKHWgHiuEbG8WgjeM6xswbkym5fHqZVKeZhpMz
 yk13oJE73uzZ0+yZ2RVGbOZjUTDym9M4dJOYSEQoUA73oMJXpJ3DUrXIJHAyD3pZm
 CrBbCv7IsXUwtOpk7Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=fqcHwKs0
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Kees Cook <keescook@chromium.org>, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Automatically cleaned up pointers need to be initialized before exiting
> their scope.  In this case, they need to be initialized to NULL before
> any return statement.

Will any adjustments become relevant also for this change description
if scope reductions would become more appealing for affected local variables?

How much can a small script (like the following) for the semantic patch language
(Coccinelle software) help to achieve a better common understanding for
possible source code transformations?

// See also:
// drivers/net/ethernet/intel/ice/ice_common.c
@movement1@
attribute name __free;
@@
-struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
 ... when any
+struct ice_aqc_get_phy_caps_data *
 pcaps
+__free(kfree)
 = kzalloc(sizeof(*pcaps), ...);

@movement2@
attribute name __free;
@@
-void *mac_buf __free(kfree);
 ... when any
+void *
 mac_buf
+__free(kfree)
 = kcalloc(2, sizeof(struct ice_aqc_manage_mac_read_resp), ...);

// See also:
// drivers/net/ethernet/intel/ice/ice_ethtool.c
@movement3@
attribute name __free;
@@
-u8 *tx_frame __free(kfree);
 int i;
 ... when any
 if (ice_fltr_add_mac(test_vsi, ...))
 { ... }
+
+{
+u8 *tx_frame __free(kfree) = NULL;
 if (ice_lbtest_create_frame(pf, &tx_frame, ...))
 { ... }
 ... when any
+}
+
 valid_frames = ice_lbtest_receive_frames(...);


Regards,
Markus
