Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B66901638
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 15:23:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF75F60628;
	Sun,  9 Jun 2024 13:23:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3rx3ORvg88V; Sun,  9 Jun 2024 13:23:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B953160727
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717939421;
	bh=25tOwBxb8NrUCwMNgIyHSiPtABS50jsxg2aCEapBvJ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=l+B+wC3zKScrTvicjpkapaNM79ryVc/buL43e05UHUiDkbCrHhZbLRFhmY09Hwbe9
	 4uRJrQi55bp5ObsNUC5yb2C/vrB/r5ABY5NZj3/aBpOT3OeHPkjB7GaIdMcMtM6ZXh
	 qOb5iVHcklXrWgBAEEk5iKYWiDgPbt1YHTLh0LgLP+rN20Tu6FnVMNiZ/nvzXRaxlt
	 kZJAvD82A3W8FCZI2C3uAb3pAh9pY9QHod09QtMJkf1jchwTAWsxMAm8cMpD97IzJN
	 dnBV3zgkfmLxbxSbTsoyGQuPljgcjVQ5YpupRVG+Qhd0Gf2QtzkbVUBXl4juDg9Mh0
	 Hhwc2WexzZsmA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B953160727;
	Sun,  9 Jun 2024 13:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84D541BF41A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 13:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D715819F8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 13:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DaPmIKgC7VXv for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 13:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.12;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B2DD819E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B2DD819E6
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B2DD819E6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 13:23:36 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.83.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N9LIc-1sSJ2o4BzY-00ys40; Sun, 09
 Jun 2024 15:22:55 +0200
Message-ID: <9903f5cb-f4e6-42f1-a8b1-b3b5da593dc7@web.de>
Date: Sun, 9 Jun 2024 15:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Richard chien <richard.chien@hpe.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20240609081526.5621-1-richard.chien@hpe.com>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240609081526.5621-1-richard.chien@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:z17MGjTFufmAsVzFpzvj8lSI7qMzlUGSGK5xS9coywFkv1zog+w
 Wp6dw5fNs1QCmj4Uv/rpGe5PQxd64GZk8rjmzdz1PhUDzoytNLOmHuzu55Opvkv+RkFYg6y
 jY8uS3C9DRGOdtH0pnTauSUyS4LmRfCRKdRLb4jnwsxKYM9G86cqOgSqr8I9BntdkscaOKW
 zx/RfKIKeqnNYJtNzLzAw==
UI-OutboundReport: notjunk:1;M01:P0:ZxIL5KsKow0=;V6dCDFstKp0XHYVZ9/UBAwozoYr
 XECA/KOp+Ounl5M33wIPnBceHaFMeEL5wVzEkWC1LtlmBCmO2QE2eLycecuhIZzbWhnz2HNHV
 LRHyY76hU+/VmjoV1udf/f5C8TpktOm59wawaVWG0bgO3kTm2j9kmHi0cDCgyNqsjMqYm+6cB
 ptS/9tcTv7qLCDMxyonjFVyjaiPTEuQ4T1HYvOH5rjvBAJGGghs5LFM2y2aFsbHxs38IUVaWe
 MYJUsnmxPZT2BzisCu3drOteDWofKSc9NmAB7wZNZlIAPZBIo7dbgkTxA/bwqBdf5sITAMxpy
 Qxvc3fY3r+FZhFnVGdZt25LS6v6D9uKpZp+xaUrLM6SvnXoTNuKPVC90hvzkTNhqcHQ+Y0Iij
 hoz14aG9ckHx4Pq78NHW4vaDrHSh2ZaHK9RCG/GXfbcTSnQ2mOSwlkFPcoDCJcsyFtiqNQRs7
 SUOhLa3d/MCtS6DtpqYI7QsU28STwB0B7lTjawh8MPdSQ8vDnF3/V1VoIW9ra8fUZ2XGFyg10
 GPX24Km0AGrwdvSqxjnpZ+Y9lFKu3oxiYvdLf55gQ/IlnfPH+LL5n+5ELMgm8iw7SInKxj9lw
 bCQ5z48ZoSUweVVJMOPF38JgbEngj0RxSE79PTZ+5wULVhiOfXTX3YGIJ81eMTnHENBqmU9Ci
 auWzA3i9+HB8ZfjzI+5rSlu2olNdRaHKrDeNEaoNE+kJ7hQm2KaNp6sDoxPPgeX4nhjaVV9Aa
 cu4JQWXum7SBxpXnKiasJ2Qn8KivxlfviLn4o9CmJl/ihC9rn5deQRhpgs0NpJ8AQ/qCx9ery
 ntxfSLdxD+x5eQw15AHGjr71hJVJpd39Bmj/FtL60X+tg=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1717939375; x=1718544175; i=markus.elfring@web.de;
 bh=25tOwBxb8NrUCwMNgIyHSiPtABS50jsxg2aCEapBvJ0=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=Tv63ZLCh+AiQAEpCr2lPKO97YI1D6aZy7+1HJU5OeYjOR+kLXyhWop5dfdci7tuy
 5OoIj0+RF0/1nuGcW6twYpd1MMpmsz48qafJmjAZ0ktyozJMGNdHTOqLYd1dx0Dm3
 32b+weBTRZ+Bnme6+eJxP1dCjDI1OS5r4pa4lbyRhrUzqxmWSwfTND9OKz42cvCXD
 TUakUnAshr943/vRER4Z57oPLDfOZGBa4v7PVbaxCUGTJCVDDRqQa+gbDVDhqp3So
 5TuFsEFEF1N3IyXdHulzixuF0DNKuyWwqnlnfj6snjsc+G7J7RXlLuafdKAdBwxb0
 9Mli1YHwFKpUuT15IQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=Tv63ZLCh
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add support for firmware update
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Richard chien <m8809301@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> This patch adds support for firmware update to the in-tree igb driver an=
d it is actually a port from the out-of-tree igb driver.
> In-band firmware update is one of the essential system maintenance tasks=
. To simplify this task, the Intel online firmware update
=E2=80=A6

Please improve such a change description also according to word wrapping
because of more desirable text line lengths.


=E2=80=A6
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -724,128 +724,282 @@ static void igb_get_regs(struct net_device *netd=
ev,
>  		regs_buff[739] =3D rd32(E1000_I210_RR2DCDELAY);
>  }
>
> -static int igb_get_eeprom_len(struct net_device *netdev)
> -{
> -	struct igb_adapter *adapter =3D netdev_priv(netdev);
> -	return adapter->hw.nvm.word_size * 2;
> +static u8 igb_nvmupd_get_module(u32 val)
> +{
> +        return (u8)(val & E1000_NVMUPD_MOD_PNT_MASK);
> +}
=E2=80=A6

Would you like to reconsider the indentation once more for your change app=
roach?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Do=
cumentation/process/coding-style.rst?h=3Dv6.10-rc2#n18

Regards,
Markus
