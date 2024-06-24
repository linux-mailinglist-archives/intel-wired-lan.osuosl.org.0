Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 491A99151D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 17:17:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3455E4089A;
	Mon, 24 Jun 2024 15:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZfX-PJ9dhCuh; Mon, 24 Jun 2024 15:17:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 666BB40681
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719242220;
	bh=7Hjk+DoOwQKd0jZlvg+VAbFDl7yand2LnLV84Jmyyes=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VoELbPzHDqcJvDPJ8BD2aOKXtACGMnxYWWHabwOhEZPhSwBA5LXw6bKl7nKOAMec+
	 zJK+fasTD1wnQYjoM9fzEvyewapX/h4aScmVChUa3pBv3iXmQTvi1gh5goVV32uC/Y
	 53+MRpHps5KBH0iaVEIBPakvKOGoXQqPx+Atz1AtM1WqP35M4j1BHo5WFHpcOFK6zh
	 N9BSldz3J2P2DCX813X8wKHzMCBd0CMxw+sMyYVnppldU6Np/tzcG4KGl+behhXBip
	 uW6IRhFeCMcLcTCU0pTzC0yH0e6eyjPDD3ayGwA5QfCLZFOn1aewQu6LyM8fy+7m+u
	 EYbcTXm8iY8ng==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 666BB40681;
	Mon, 24 Jun 2024 15:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06E3E1BF47F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 10:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6EBC401EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 10:23:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rx7iW4zztfAJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 10:23:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ihuguet@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DFCC2401ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFCC2401ED
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFCC2401ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 10:23:44 +0000 (UTC)
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-199-5cAd18asObiv_P5yvRPCvA-1; Mon, 24 Jun 2024 06:23:42 -0400
X-MC-Unique: 5cAd18asObiv_P5yvRPCvA-1
Received: by mail-lf1-f72.google.com with SMTP id
 2adb3069b0e04-52cdd795cdaso1459139e87.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 03:23:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719224620; x=1719829420;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7Hjk+DoOwQKd0jZlvg+VAbFDl7yand2LnLV84Jmyyes=;
 b=Prw7F7v3X7PiKGXp9qwTHFG2+8+rfAtLz7uKOS0khBwbT81nP6XBk2Q+IQgFSIa+gx
 NGDNXErdxKQGiUQ/PW6kpL8M1x/sYZw/KBXfpP5ffLe+upF9+w9Aj/0RQlgih9cigCJE
 EDjucZqFVtN1ddXtBFQ3sGanFJOfibc+ME4UcUin66uXhOTC53NLWYe9WQm4LAkCu1Ig
 EpSMztk4MW8VJeoSyF0XqB+/IpzGyX/HyberAdNft1IjeNVscQ2qrHax3QKyWvJPeHVu
 biZCPwXpc4PB6XHTz2V2p8tTbKiRFrra6k88MpTSAjS4eGvgRWaph3PGFwuluIAWl19L
 S6fg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWUNPPYdNcfhe3Z5OPb7u0YfBz+f3S5KLWmg9/vpHKuxINuS1qT3h85ZQSYyfp1Z4BccIEn2GsqzDzPuCiXlAxeboPJmoSgaDLrSoHg1DnW3g==
X-Gm-Message-State: AOJu0YySp5amKAN1ShXGdt31POFEaoJOstB5gB8gNyvmHeDKSzU14tpk
 rRoitgZ2IOISwMiLveQCwaBbwi6NegzrY70UtznkdYH9LWv/zBX9nwU5HfA8BFWuiWXdDdpk+EN
 RMXv09RA1jwSgjzzJ/f1vtUL8kqrbgwXmX8cAQlEBP1a9fLVY6YWJTMMnH/ckXdty1pZck7olAh
 Elb+Kx5HefMgux6ED/dx1eR3mxpc/KmWeWcK6kVID35w==
X-Received: by 2002:ac2:5f8b:0:b0:52c:df2c:65fe with SMTP id
 2adb3069b0e04-52ce18350bemr2804721e87.15.1719224620441; 
 Mon, 24 Jun 2024 03:23:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfnbpZbFH7ayIt404IdYoEK4urJrTlHgaZMO5rvHxCjCGSOkUqRPmg/1UDBzqCFTz11dQkM5zIzR6YjbS/lYo=
X-Received: by 2002:ac2:5f8b:0:b0:52c:df2c:65fe with SMTP id
 2adb3069b0e04-52ce18350bemr2804705e87.15.1719224620049; Mon, 24 Jun 2024
 03:23:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240624095331.351039-1-ihuguet@redhat.com>
In-Reply-To: <20240624095331.351039-1-ihuguet@redhat.com>
From: =?UTF-8?B?w43DsWlnbyBIdWd1ZXQ=?= <ihuguet@redhat.com>
Date: Mon, 24 Jun 2024 12:23:28 +0200
Message-ID: <CACT4oufqR100dshYZXw76MOvmkgNmSfViAwcktK6b2JMENbkcw@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 24 Jun 2024 15:16:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1719224623;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7Hjk+DoOwQKd0jZlvg+VAbFDl7yand2LnLV84Jmyyes=;
 b=WpnYJl0vVGwJIfzDhSzInFgHjPGcpWl4EiNROX8OtPIywCBawmXYnjIdqySNVRmsHujFZB
 E6v3nDhAyqmmabdeaPYY9rrFhEkhyE5ceSQiH8sTwDE9/rUycSll3MUckwWiAZR806ag5F
 9Nm8a57sHzmIykhAhd5vYhmPN1bGDcw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WpnYJl0v
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: igc: return error for
 link autoneg=off
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sorry, I thought I had done `git pull` on my net-next tree, but I
didn't and the patch doesn't apply due to context differences.

I will send an updated patch in one or two days, including the
requested changes if there are any.

On Mon, Jun 24, 2024 at 11:53=E2=80=AFAM =C3=8D=C3=B1igo Huguet <ihuguet@re=
dhat.com> wrote:
>
> The driver doesn't support force mode for the link settings. However, if
> the user request it, it's just ignored and success is returned. Return
> ENOTSUPP instead.
>
> Signed-off-by: =C3=8D=C3=B1igo Huguet <ihuguet@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/e=
thernet/intel/igc/igc_ethtool.c
> index 93bce729be76..b7b32344d074 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1832,6 +1832,12 @@ igc_ethtool_set_link_ksettings(struct net_device *=
netdev,
>                 }
>         }
>
> +       /* The driver does not support force mode yet */
> +       if (cmd->base.autoneg =3D=3D AUTONEG_DISABLE) {
> +               netdev_err(dev, "Force mode currently not supported\n");
> +               return -EOPNOTSUPP;
> +       }
> +
>         while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
>                 usleep_range(1000, 2000);
>
> @@ -1844,14 +1850,10 @@ igc_ethtool_set_link_ksettings(struct net_device =
*netdev,
>         if (ethtool_link_ksettings_test_link_mode(cmd, advertising, 2500b=
aseT_Full))
>                 advertising |=3D ADVERTISE_2500_FULL;
>
> -       if (cmd->base.autoneg =3D=3D AUTONEG_ENABLE) {
> -               hw->mac.autoneg =3D 1;
> -               hw->phy.autoneg_advertised =3D advertising;
> -               if (adapter->fc_autoneg)
> -                       hw->fc.requested_mode =3D igc_fc_default;
> -       } else {
> -               netdev_info(dev, "Force mode currently not supported\n");
> -       }
> +       hw->mac.autoneg =3D 1;
> +       hw->phy.autoneg_advertised =3D advertising;
> +       if (adapter->fc_autoneg)
> +               hw->fc.requested_mode =3D igc_fc_default;
>
>         /* MDI-X =3D> 2; MDI =3D> 1; Auto =3D> 3 */
>         if (cmd->base.eth_tp_mdix_ctrl) {
> --
> 2.44.0
>


--=20
=C3=8D=C3=B1igo Huguet

