Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3C62B4DA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 18:41:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A59B8657C;
	Mon, 16 Nov 2020 17:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gnZjR-vkLiiy; Mon, 16 Nov 2020 17:41:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDCF78686D;
	Mon, 16 Nov 2020 17:41:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 702691BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 17:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 68BCD87183
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 17:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8FKmYXk4TNv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 17:40:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 892108717B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 17:40:20 +0000 (UTC)
IronPort-SDR: Mn2S7oOMd0cDZhfRRVzxBA9UNunA2iHFq9nPTAzQHoWhQyImHW5deoRK9bquyur5d1UfeJZCch
 iU7Nvb04HwKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="167272826"
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="167272826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:40:19 -0800
IronPort-SDR: wLbC/q5eQ82Ws3LH7O++UpZ29nmqHbCUJB3jzIIGJuxpQViDMqK5jEznR/r7egJXK5mJhkbdsh
 oQRY8oV2NVqA==
X-IronPort-AV: E=Sophos;i="5.77,483,1596524400"; d="scan'208";a="543685613"
Received: from franders-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.35.195])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 09:40:11 -0800
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
 <20201116064953-mutt-send-email-mst@kernel.org>
 <614a7ce4-2b6b-129b-de7d-71428f7a71f6@intel.com>
 <20201116073848-mutt-send-email-mst@kernel.org>
 <585b011f-0817-a684-d1db-125bb55741fe@intel.com>
 <20201116085548-mutt-send-email-mst@kernel.org>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <6dc830b3-4ca4-c349-4005-952cfa437328@intel.com>
Date: Mon, 16 Nov 2020 18:40:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201116085548-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 16 Nov 2020 17:41:21 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 06/10] xsk: propagate
 napi_id to XDP socket Rx path
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
Cc: kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com,
 ecree@solarflare.com, aelior@marvell.com, akiyano@amazon.com,
 sthemmin@microsoft.com, ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, sgoutham@marvell.com,
 grygorii.strashko@ti.com, jonathan.lemon@gmail.com, qi.z.zhang@intel.com,
 mcroce@microsoft.com, michael.chan@broadcom.com, magnus.karlsson@intel.com,
 daniel@iogearbox.net, ilias.apalodimas@linaro.org, tariqt@nvidia.com,
 netanel@amazon.com, bpf@vger.kernel.org, saeedm@nvidia.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 2020-11-16 14:55, Michael S. Tsirkin wrote:
[...]
> 
> tun too ;)
> 

:-) AFAIK tun doesn't use "Rx" napi, just netif_tx_napi_add() which
doesn't generate a napi_id.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
