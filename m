Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1162C1765F1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Mar 2020 22:26:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B41BB8527D;
	Mon,  2 Mar 2020 21:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7w6dQXmGABFr; Mon,  2 Mar 2020 21:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84978854A0;
	Mon,  2 Mar 2020 21:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C8BF1BF366
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 21:26:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DFA22040C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 21:26:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QpsYAaLOHRM5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2020 21:26:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
 [209.85.166.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E166203F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2020 21:26:36 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id h8so1138096iob.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Mar 2020 13:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iNRoeDp3dwpo3Ea+WVKioVLObUI3D01l7g5HAvzgFpc=;
 b=KflEtkyJ9SOSl2BfWyJqqsldveRogVapgezasAJy8PoQyOXBpbINpWQQyXUBbyIPlx
 h/Sdi9Xe0VijY+oqYc/tySYPnL6EJnx8m2oz5dIoAXWdy5sNoVKdZlC9VMaCIHJ+KWZl
 XrVZznAMv33WceBeQYz8A3LjV1J8a9g1YEHYmnB77OlEbWMngkurK06yeE2ooJ+sdijh
 eeIbEZnvtbgX9DT7GIQjWb7OsuxKCMp7X3ZJ7XMpnLIbfYTYEi9XoTCwc5pekWSaque4
 644QOeTIhRRTHVuid5mkA3M+0f7aUYaSukr6KRpQ43+st0d/B/sxfXrF5/Dwp9WqCb3W
 ewdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iNRoeDp3dwpo3Ea+WVKioVLObUI3D01l7g5HAvzgFpc=;
 b=L2+b3754FM9+Hh8Nulc25rZAKzvkvVj0xVrUUf7Lf+Vc3PWaLebXGCfv2IMPyZbQ57
 +DUGlkWyexxpUspGl77c4V+7HIsSjmqIvUiPWSREoWDPW8nO/l7cUqzENOct3qZ7Zz+V
 7o+H7gYGWtU6N+qJ3XSEFH1osNWaULVRJzuycjDrTeFrgigLDeC+uZBk264L3VC99zv3
 ZFunvfZJFMG8TaCpocPmwveFDTMIkPHtiJ2PzEAEc6223r353xojLGT2Fuy2LkF15W52
 Og/mQKiFNZxiQ1FAXPBenrcoz0Wh1KLGiSdH31B7knVkXXPX7BL4Lu/nPSTmVdTE7HNL
 IKBw==
X-Gm-Message-State: ANhLgQ0kMWY30Jkac7mwQzvQLi6KtLwnQW4Atl+iQMSGStn+ctySlPZI
 eaf4WR32PmnPdRQxEBlSUFVyI5HfyweN8xAMT+g=
X-Google-Smtp-Source: ADFU+vv3ENfsftYqB/yhAU9XkhtV5VQux5KDtQVRSGObaAIwFMlC/j7dOZdpXX+iWmKODxTOzgPPE66aEFg1cS/sbw8=
X-Received: by 2002:a02:3093:: with SMTP id q141mr335542jaq.121.1583184395001; 
 Mon, 02 Mar 2020 13:26:35 -0800 (PST)
MIME-Version: 1.0
References: <20200302202307.23260-1-sasha.neftin@intel.com>
In-Reply-To: <20200302202307.23260-1-sasha.neftin@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 2 Mar 2020 13:26:24 -0800
Message-ID: <CAKgT0UdFW1KbAzsUX2o7-UDD1ay70euxs6Ts=RjYN4dfFEE6Fg@mail.gmail.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove copper fiber
 switch control
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 2, 2020 at 12:23 PM Sasha Neftin <sasha.neftin@intel.com> wrote:
>
> i225 device support copper mode only
> PHY signal detect indication for copper fiber switch
> not applicable to i225 part
>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

So there are a couple issues with this patch.

All the changes in igc_ethtool.c are broken at this point. Once a
register is defined in regs_buff you cannot change it. Otherwise you
cannot debug this in the future. You would be better off just skipping
the register that you were storing CONNSW and let it default to zero
instead of doing all of the shifting you are doing. You can just skip
over the register in the dump in ethtool assuming there is even a file
for the device that has been added.

Also you might want to change the patch description to specify that
the CONNSW register doesn't exist for the i225 part. Then it makes
sense to remove the register from igc_get_regs.

> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h |   2 -
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 193 +++++++++++++--------------
>  drivers/net/ethernet/intel/igc/igc_main.c    |   9 --
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   1 -
>  4 files changed, 96 insertions(+), 109 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index dd0c86ce09ed..e5116337b68d 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -91,8 +91,6 @@
>  #define IGC_CTRL_RFCE          0x08000000  /* Receive Flow Control enable */
>  #define IGC_CTRL_TFCE          0x10000000  /* Transmit flow control enable */
>
> -#define IGC_CONNSW_AUTOSENSE_EN        0x1
> -
>  /* As per the EAS the maximum supported size is 9.5KB (9728 bytes) */
>  #define MAX_JUMBO_FRAME_SIZE   0x2600
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 69f50b8e2af3..82d0c893ed41 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -160,142 +160,141 @@ static void igc_get_regs(struct net_device *netdev,
>         regs_buff[1] = rd32(IGC_STATUS);
>         regs_buff[2] = rd32(IGC_CTRL_EXT);
>         regs_buff[3] = rd32(IGC_MDIC);
> -       regs_buff[4] = rd32(IGC_CONNSW);
>
>         /* NVM Register */
> -       regs_buff[5] = rd32(IGC_EECD);
> +       regs_buff[4] = rd32(IGC_EECD);
>
>         /* Interrupt */
>         /* Reading EICS for EICR because they read the
>          * same but EICS does not clear on read
>          */
> +       regs_buff[5] = rd32(IGC_EICS);
>         regs_buff[6] = rd32(IGC_EICS);
> -       regs_buff[7] = rd32(IGC_EICS);
> -       regs_buff[8] = rd32(IGC_EIMS);
> -       regs_buff[9] = rd32(IGC_EIMC);
> -       regs_buff[10] = rd32(IGC_EIAC);
> -       regs_buff[11] = rd32(IGC_EIAM);
> +       regs_buff[7] = rd32(IGC_EIMS);
> +       regs_buff[8] = rd32(IGC_EIMC);
> +       regs_buff[9] = rd32(IGC_EIAC);
> +       regs_buff[10] = rd32(IGC_EIAM);
>         /* Reading ICS for ICR because they read the
>          * same but ICS does not clear on read
>          */
> +       regs_buff[11] = rd32(IGC_ICS);
>         regs_buff[12] = rd32(IGC_ICS);
> -       regs_buff[13] = rd32(IGC_ICS);
> -       regs_buff[14] = rd32(IGC_IMS);
> -       regs_buff[15] = rd32(IGC_IMC);
> -       regs_buff[16] = rd32(IGC_IAC);
> -       regs_buff[17] = rd32(IGC_IAM);
> +       regs_buff[13] = rd32(IGC_IMS);
> +       regs_buff[14] = rd32(IGC_IMC);
> +       regs_buff[15] = rd32(IGC_IAC);
> +       regs_buff[16] = rd32(IGC_IAM);
>
>         /* Flow Control */
> -       regs_buff[18] = rd32(IGC_FCAL);
> -       regs_buff[19] = rd32(IGC_FCAH);
> -       regs_buff[20] = rd32(IGC_FCTTV);
> -       regs_buff[21] = rd32(IGC_FCRTL);
> -       regs_buff[22] = rd32(IGC_FCRTH);
> -       regs_buff[23] = rd32(IGC_FCRTV);
> +       regs_buff[17] = rd32(IGC_FCAL);
> +       regs_buff[18] = rd32(IGC_FCAH);
> +       regs_buff[19] = rd32(IGC_FCTTV);
> +       regs_buff[20] = rd32(IGC_FCRTL);
> +       regs_buff[21] = rd32(IGC_FCRTH);
> +       regs_buff[22] = rd32(IGC_FCRTV);
>
>         /* Receive */
> -       regs_buff[24] = rd32(IGC_RCTL);
> -       regs_buff[25] = rd32(IGC_RXCSUM);
> -       regs_buff[26] = rd32(IGC_RLPML);
> -       regs_buff[27] = rd32(IGC_RFCTL);
> +       regs_buff[23] = rd32(IGC_RCTL);
> +       regs_buff[24] = rd32(IGC_RXCSUM);
> +       regs_buff[25] = rd32(IGC_RLPML);
> +       regs_buff[26] = rd32(IGC_RFCTL);
>
>         /* Transmit */
> -       regs_buff[28] = rd32(IGC_TCTL);
> -       regs_buff[29] = rd32(IGC_TIPG);
> +       regs_buff[27] = rd32(IGC_TCTL);
> +       regs_buff[28] = rd32(IGC_TIPG);
>
>         /* Wake Up */
>
>         /* MAC */
>
>         /* Statistics */
> -       regs_buff[30] = adapter->stats.crcerrs;
> -       regs_buff[31] = adapter->stats.algnerrc;
> -       regs_buff[32] = adapter->stats.symerrs;
> -       regs_buff[33] = adapter->stats.rxerrc;
> -       regs_buff[34] = adapter->stats.mpc;
> -       regs_buff[35] = adapter->stats.scc;
> -       regs_buff[36] = adapter->stats.ecol;
> -       regs_buff[37] = adapter->stats.mcc;
> -       regs_buff[38] = adapter->stats.latecol;
> -       regs_buff[39] = adapter->stats.colc;
> -       regs_buff[40] = adapter->stats.dc;
> -       regs_buff[41] = adapter->stats.tncrs;
> -       regs_buff[42] = adapter->stats.sec;
> -       regs_buff[43] = adapter->stats.htdpmc;
> -       regs_buff[44] = adapter->stats.rlec;
> -       regs_buff[45] = adapter->stats.xonrxc;
> -       regs_buff[46] = adapter->stats.xontxc;
> -       regs_buff[47] = adapter->stats.xoffrxc;
> -       regs_buff[48] = adapter->stats.xofftxc;
> -       regs_buff[49] = adapter->stats.fcruc;
> -       regs_buff[50] = adapter->stats.prc64;
> -       regs_buff[51] = adapter->stats.prc127;
> -       regs_buff[52] = adapter->stats.prc255;
> -       regs_buff[53] = adapter->stats.prc511;
> -       regs_buff[54] = adapter->stats.prc1023;
> -       regs_buff[55] = adapter->stats.prc1522;
> -       regs_buff[56] = adapter->stats.gprc;
> -       regs_buff[57] = adapter->stats.bprc;
> -       regs_buff[58] = adapter->stats.mprc;
> -       regs_buff[59] = adapter->stats.gptc;
> -       regs_buff[60] = adapter->stats.gorc;
> -       regs_buff[61] = adapter->stats.gotc;
> -       regs_buff[62] = adapter->stats.rnbc;
> -       regs_buff[63] = adapter->stats.ruc;
> -       regs_buff[64] = adapter->stats.rfc;
> -       regs_buff[65] = adapter->stats.roc;
> -       regs_buff[66] = adapter->stats.rjc;
> -       regs_buff[67] = adapter->stats.mgprc;
> -       regs_buff[68] = adapter->stats.mgpdc;
> -       regs_buff[69] = adapter->stats.mgptc;
> -       regs_buff[70] = adapter->stats.tor;
> -       regs_buff[71] = adapter->stats.tot;
> -       regs_buff[72] = adapter->stats.tpr;
> -       regs_buff[73] = adapter->stats.tpt;
> -       regs_buff[74] = adapter->stats.ptc64;
> -       regs_buff[75] = adapter->stats.ptc127;
> -       regs_buff[76] = adapter->stats.ptc255;
> -       regs_buff[77] = adapter->stats.ptc511;
> -       regs_buff[78] = adapter->stats.ptc1023;
> -       regs_buff[79] = adapter->stats.ptc1522;
> -       regs_buff[80] = adapter->stats.mptc;
> -       regs_buff[81] = adapter->stats.bptc;
> -       regs_buff[82] = adapter->stats.tsctc;
> -       regs_buff[83] = adapter->stats.iac;
> -       regs_buff[84] = adapter->stats.rpthc;
> -       regs_buff[85] = adapter->stats.hgptc;
> -       regs_buff[86] = adapter->stats.hgorc;
> -       regs_buff[87] = adapter->stats.hgotc;
> -       regs_buff[88] = adapter->stats.lenerrs;
> -       regs_buff[89] = adapter->stats.scvpc;
> -       regs_buff[90] = adapter->stats.hrmpc;
> +       regs_buff[29] = adapter->stats.crcerrs;
> +       regs_buff[30] = adapter->stats.algnerrc;
> +       regs_buff[31] = adapter->stats.symerrs;
> +       regs_buff[32] = adapter->stats.rxerrc;
> +       regs_buff[33] = adapter->stats.mpc;
> +       regs_buff[34] = adapter->stats.scc;
> +       regs_buff[35] = adapter->stats.ecol;
> +       regs_buff[36] = adapter->stats.mcc;
> +       regs_buff[37] = adapter->stats.latecol;
> +       regs_buff[38] = adapter->stats.colc;
> +       regs_buff[39] = adapter->stats.dc;
> +       regs_buff[40] = adapter->stats.tncrs;
> +       regs_buff[41] = adapter->stats.sec;
> +       regs_buff[42] = adapter->stats.htdpmc;
> +       regs_buff[43] = adapter->stats.rlec;
> +       regs_buff[44] = adapter->stats.xonrxc;
> +       regs_buff[45] = adapter->stats.xontxc;
> +       regs_buff[46] = adapter->stats.xoffrxc;
> +       regs_buff[47] = adapter->stats.xofftxc;
> +       regs_buff[48] = adapter->stats.fcruc;
> +       regs_buff[49] = adapter->stats.prc64;
> +       regs_buff[50] = adapter->stats.prc127;
> +       regs_buff[51] = adapter->stats.prc255;
> +       regs_buff[52] = adapter->stats.prc511;
> +       regs_buff[53] = adapter->stats.prc1023;
> +       regs_buff[54] = adapter->stats.prc1522;
> +       regs_buff[55] = adapter->stats.gprc;
> +       regs_buff[56] = adapter->stats.bprc;
> +       regs_buff[57] = adapter->stats.mprc;
> +       regs_buff[58] = adapter->stats.gptc;
> +       regs_buff[59] = adapter->stats.gorc;
> +       regs_buff[60] = adapter->stats.gotc;
> +       regs_buff[61] = adapter->stats.rnbc;
> +       regs_buff[62] = adapter->stats.ruc;
> +       regs_buff[63] = adapter->stats.rfc;
> +       regs_buff[64] = adapter->stats.roc;
> +       regs_buff[65] = adapter->stats.rjc;
> +       regs_buff[66] = adapter->stats.mgprc;
> +       regs_buff[67] = adapter->stats.mgpdc;
> +       regs_buff[68] = adapter->stats.mgptc;
> +       regs_buff[69] = adapter->stats.tor;
> +       regs_buff[70] = adapter->stats.tot;
> +       regs_buff[71] = adapter->stats.tpr;
> +       regs_buff[72] = adapter->stats.tpt;
> +       regs_buff[73] = adapter->stats.ptc64;
> +       regs_buff[74] = adapter->stats.ptc127;
> +       regs_buff[75] = adapter->stats.ptc255;
> +       regs_buff[76] = adapter->stats.ptc511;
> +       regs_buff[77] = adapter->stats.ptc1023;
> +       regs_buff[78] = adapter->stats.ptc1522;
> +       regs_buff[79] = adapter->stats.mptc;
> +       regs_buff[80] = adapter->stats.bptc;
> +       regs_buff[81] = adapter->stats.tsctc;
> +       regs_buff[82] = adapter->stats.iac;
> +       regs_buff[83] = adapter->stats.rpthc;
> +       regs_buff[84] = adapter->stats.hgptc;
> +       regs_buff[85] = adapter->stats.hgorc;
> +       regs_buff[86] = adapter->stats.hgotc;
> +       regs_buff[87] = adapter->stats.lenerrs;
> +       regs_buff[88] = adapter->stats.scvpc;
> +       regs_buff[89] = adapter->stats.hrmpc;
>
>         for (i = 0; i < 4; i++)
> -               regs_buff[91 + i] = rd32(IGC_SRRCTL(i));
> +               regs_buff[90 + i] = rd32(IGC_SRRCTL(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[95 + i] = rd32(IGC_PSRTYPE(i));
> +               regs_buff[94 + i] = rd32(IGC_PSRTYPE(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[99 + i] = rd32(IGC_RDBAL(i));
> +               regs_buff[98 + i] = rd32(IGC_RDBAL(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[103 + i] = rd32(IGC_RDBAH(i));
> +               regs_buff[102 + i] = rd32(IGC_RDBAH(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[107 + i] = rd32(IGC_RDLEN(i));
> +               regs_buff[106 + i] = rd32(IGC_RDLEN(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[111 + i] = rd32(IGC_RDH(i));
> +               regs_buff[110 + i] = rd32(IGC_RDH(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[115 + i] = rd32(IGC_RDT(i));
> +               regs_buff[114 + i] = rd32(IGC_RDT(i));
>         for (i = 0; i < 4; i++)
> -               regs_buff[119 + i] = rd32(IGC_RXDCTL(i));
> +               regs_buff[118 + i] = rd32(IGC_RXDCTL(i));
>
>         for (i = 0; i < 10; i++)
> -               regs_buff[123 + i] = rd32(IGC_EITR(i));
> +               regs_buff[122 + i] = rd32(IGC_EITR(i));
>         for (i = 0; i < 16; i++)
> -               regs_buff[139 + i] = rd32(IGC_RAL(i));
> +               regs_buff[138 + i] = rd32(IGC_RAL(i));
>         for (i = 0; i < 16; i++)
> -               regs_buff[145 + i] = rd32(IGC_RAH(i));
> +               regs_buff[144 + i] = rd32(IGC_RAH(i));
>
>         for (i = 0; i < 4; i++)
> -               regs_buff[149 + i] = rd32(IGC_TDBAL(i));
> +               regs_buff[148 + i] = rd32(IGC_TDBAL(i));
>         for (i = 0; i < 4; i++)
>                 regs_buff[152 + i] = rd32(IGC_TDBAH(i));
>         for (i = 0; i < 4; i++)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index d406aaea24af..47009fe0cbde 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -4036,7 +4036,6 @@ static void igc_watchdog_task(struct work_struct *work)
>         struct igc_hw *hw = &adapter->hw;
>         struct igc_phy_info *phy = &hw->phy;
>         u16 phy_data, retry_count = 20;
> -       u32 connsw;
>         u32 link;
>         int i;
>
> @@ -4049,14 +4048,6 @@ static void igc_watchdog_task(struct work_struct *work)
>                         link = false;
>         }
>
> -       /* Force link down if we have fiber to swap to */
> -       if (adapter->flags & IGC_FLAG_MAS_ENABLE) {
> -               if (hw->phy.media_type == igc_media_type_copper) {
> -                       connsw = rd32(IGC_CONNSW);
> -                       if (!(connsw & IGC_CONNSW_AUTOSENSE_EN))
> -                               link = 0;
> -               }
> -       }
>         if (link) {
>                 /* Cancel scheduled suspend requests. */
>                 pm_runtime_resume(netdev->dev.parent);
> diff --git a/drivers/net/ethernet/intel/igc/igc_regs.h b/drivers/net/ethernet/intel/igc/igc_regs.h
> index 96dee3c1a5f7..79789176fc80 100644
> --- a/drivers/net/ethernet/intel/igc/igc_regs.h
> +++ b/drivers/net/ethernet/intel/igc/igc_regs.h
> @@ -11,7 +11,6 @@
>  #define IGC_CTRL_EXT           0x00018  /* Extended Device Control - RW */
>  #define IGC_MDIC               0x00020  /* MDI Control - RW */
>  #define IGC_MDICNFG            0x00E04  /* MDC/MDIO Configuration - RW */
> -#define IGC_CONNSW             0x00034  /* Copper/Fiber switch control - RW */
>  #define IGC_I225_PHPM          0x00E14  /* I225 PHY Power Management */
>
>  /* Internal Packet Buffer Size Registers */
> --
> 2.11.0
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
