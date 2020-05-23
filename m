Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BA01DF56B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 May 2020 09:13:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2B8A88745;
	Sat, 23 May 2020 07:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCXyeuw0PqO5; Sat, 23 May 2020 07:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32BD288773;
	Sat, 23 May 2020 07:13:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA4361BF288
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 07:13:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E08DF2035B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 07:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qRbhMTnTMY8v for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 May 2020 07:13:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id A5F252010D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 May 2020 07:13:23 +0000 (UTC)
IronPort-SDR: s8IcXTcDzI2pp/GGXVimtEEGOY//nLtG3OHxyT1/yxhK7cmTbzjwMXXBRR6v06knNec7s8ILRk
 Y61Xsz3KX1OQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2020 00:13:23 -0700
IronPort-SDR: kW7MfcJBvs7Q20BttedynMMJZnzALUVX2POm3hsF8R8elQH2oIauFXX5Ca6JXjTbmNQe7mxgNx
 FD4dQl7f9aGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,424,1583222400"; d="scan'208";a="441120808"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2020 00:13:22 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 23 May 2020 00:13:22 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.61]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.32]) with mapi id 14.03.0439.000;
 Sat, 23 May 2020 00:13:22 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: Hari <harichandrakanthan@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] Fix typo in the comment
Thread-Index: AQHWMIAROEHnu2n/tUy7sUnJiKhNsai1Qc8w
Date: Sat, 23 May 2020 07:13:21 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044986D1159@ORSMSX112.amr.corp.intel.com>
References: <20200522103024.9697-1-harichandrakanthan@gmail.com>
In-Reply-To: <20200522103024.9697-1-harichandrakanthan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] Fix typo in the comment
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Hari
> Sent: Friday, May 22, 2020 03:30
> To: davem@davemloft.net; kuba@kernel.org
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; Hari <harichandrakanthan@gmail.com>
> Subject: [Intel-wired-lan] [PATCH] Fix typo in the comment
[Kirsher, Jeffrey T] 

Please fix the title to "e1000: Fix typo in the comment", other than that your patch looks fine and I will add it to my queue after the title of your patch is fixed.

> 
> Continuous Double "the" in a comment. Changed it to single "the"
> 
> Signed-off-by: Hari <harichandrakanthan@gmail.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_hw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> index 48428d6a00be..623e516a9630 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> @@ -3960,7 +3960,7 @@ static s32 e1000_do_read_eeprom(struct e1000_hw
> *hw, u16 offset, u16 words,
>   * @hw: Struct containing variables accessed by shared code
>   *
>   * Reads the first 64 16 bit words of the EEPROM and sums the values read.
> - * If the the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
> + * If the sum of the 64 16 bit words is 0xBABA, the EEPROM's checksum is
>   * valid.
>   */
>  s32 e1000_validate_eeprom_checksum(struct e1000_hw *hw)
> --
> 2.17.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
