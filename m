Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE061B1F9EA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 10 Aug 2025 14:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED89B40D8D;
	Sun, 10 Aug 2025 12:23:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q64ms6iJaAWZ; Sun, 10 Aug 2025 12:23:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CFD540D85
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754828606;
	bh=EVtfsPd4I2wMc65UP3tFTwUuyAKqcoFWuqbrTO5hc3I=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BsRoyLEhmYJHondSB07TALAvark4RTur6VYUiiwiOeBvXWbISrH+vZgsztxLY7iWf
	 ZQgDLq+lP8txGLpG24SaPhTJwt6E8n4WmfmWZvEkGcmAb2+ksjXnR6ZVUgvsVdcYd2
	 B5NTj4TTvNDp7z2rdq1nWt4X2ma+3wzG0dmefbYxemFXg2R6gW3xSWiLhwRO/I8z8m
	 Ww5p83mdo9y4Z+PQun6aOEeKffESIPrl1MK09D287z/FzkMYsS9s10SoismUMKwkG7
	 aMI59Dhge73cHjj3VQ49dEU8+zsvKXI5kTFvherTK8kgGDDcwW+5BgaUVDf9Q5bmCP
	 jDwuY6kUDw8ZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CFD540D85;
	Sun, 10 Aug 2025 12:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E72F31
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 12:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9BCF160F0A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 12:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XGPKVlQpK-Kz for <intel-wired-lan@lists.osuosl.org>;
 Sun, 10 Aug 2025 12:23:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12c; helo=mail-il1-x12c.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 07DBF60B91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07DBF60B91
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07DBF60B91
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 12:23:23 +0000 (UTC)
Received: by mail-il1-x12c.google.com with SMTP id
 e9e14a558f8ab-3e5172e496aso31068805ab.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 10 Aug 2025 05:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754828603; x=1755433403;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EVtfsPd4I2wMc65UP3tFTwUuyAKqcoFWuqbrTO5hc3I=;
 b=NzeiOaLrr9Cnh6JH2IH39s+VtKdw/s7Xdki9utL0AOkFha1mi1ySkTdjscD5rDfu1o
 DAXbhrfTnmWqO/Nb4ch63I+biBEPbvIoOMYgeExelM6QatRwHQFaUElLP0izHeWwy6Dr
 UVzvOXrpakE8U5WqZn4eAedgDcPA5s0vRZIpVpIcy3D2M2n5rUn0E58rFnfT8AQWV3KD
 ScAN9DF+teVM8wHDidykx3zLRKsHPUXvLB50ugpeqNOQFYZ0lNlXbfAYVEO+HfpGwLYm
 C+MIrUsP4C5d7or+12sNDaehAOt0KwZ3d07ErBuogBJvEo3Yk6TBeyPZ4hBjl0gQz0aW
 8XgQ==
X-Gm-Message-State: AOJu0YzL16mWM0g/FtEz1zzlb/7JgTOL8VMV+1HsJwSQAIpvOLObr9Ei
 3LCyFUFbS+GYepvnagH8piZYDRXUChzi+PWV7vzgRAqI2ZA1CRJUequLYEc4xZPg91ZMVP5qi8U
 1F3T08qez8j9s6uhsSfCeZbpmnrLQhtM=
X-Gm-Gg: ASbGncuwEIbqZsYbCamEJybaMb8my0tl/HvVmXfM4a0rdaJSrlqMuDM6LMRHacZ1DRk
 2H3nfj2Fc773t/3LuVKNBTAi5ngciRbKJ68jrwCLO/UkCebKoYLoxYjWhcXFPy5ffbUeA9RA/p2
 Ifm/h3Jjyn5mVXjSqU8c+I+m4sK2slm3C4yGXCBmSzFJwPeK/IRsd0FxE34sXBKUwNxnSGdYyo4
 HerlJA=
X-Google-Smtp-Source: AGHT+IHNihEA/9zngYvPSNs+HownZUaFanokWYdKE2VIGwSEO56UAOstKHADV5YlIFRbtu+wKHQW5rqBGp0hc4GPY54=
X-Received: by 2002:a05:6e02:481b:b0:3e5:3521:46e3 with SMTP id
 e9e14a558f8ab-3e5352148b5mr175635875ab.23.1754828602934; Sun, 10 Aug 2025
 05:23:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
In-Reply-To: <20250726070356.58183-1-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Sun, 10 Aug 2025 20:22:46 +0800
X-Gm-Features: Ac12FXziDhm_YRFDlpDASBNgcsyzmA3IKpNb-ySl_K0wnEuCRdLMg9D0dDCsyuU
Message-ID: <CAL+tcoAAq9ccjUybzxoYbVG6i3Ev1C098aGKWvAvKMUeFyG3Tw@mail.gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 larysa.zaremba@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 maciej.fijalkowski@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754828603; x=1755433403; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EVtfsPd4I2wMc65UP3tFTwUuyAKqcoFWuqbrTO5hc3I=;
 b=C90pVvYleOFFw8+7bMqHHrvlk6OfTbUQapmFEELqOhIQuppfdG8q/Sq6tSbU6gDcff
 ssVl3qyyGOl6p6+Qsq8fVebCN+bvN+cySN7VyslRvPUQgIE7VsClttOOVQQi++6+2pf1
 jKTZNXscf4qolnmq/n76fFw8vR55IWNYhIk70bQh3JlO7w4bM6O/S3KhWRhP/gZnlVAc
 qSzkEnavrYSvWxQbnL7sNLRWazT5GZBeow/w9FFFN/xeBx4l0/oWuk15pQBOinRmX4lI
 zxwYQErYpmAsijG10mARRfeUtxvcGZQsFbInsbQz/Rx/jGDJHmw9g27z2gi7IJN68/DY
 GhnQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=C90pVvYl
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net] ixgbe: xsk: resolve the
 negative overflow of budget in ixgbe_xmit_zc
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jul 26, 2025 at 3:04=E2=80=AFPM Jason Xing <kerneljasonxing@gmail.c=
om> wrote:
>
> From: Jason Xing <kernelxing@tencent.com>
>
> Resolve the budget negative overflow which leads to returning true in
> ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
>
> Before this patch, when the budget is decreased to zero and finishes
> sending the last allowed desc in ixgbe_xmit_zc, it will always turn back
> and enter into the while() statement to see if it should keep processing
> packets, but in the meantime it unexpectedly decreases the value again to
> 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc return=
s
> true, showing 'we complete cleaning the budget'. That also means
> 'clean_complete =3D true' in ixgbe_poll.
>
> The true theory behind this is if that budget number of descs are consume=
d,
> it implies that we might have more descs to be done. So we should return
> false in ixgbe_xmit_zc to tell napi poll to find another chance to start
> polling to handle the rest of descs. On the contrary, returning true here
> means job done and we know we finish all the possible descs this time and
> we don't intend to start a new napi poll.
>
> It is apparently against our expectations. Please also see how
> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statement
> to make sure the budget can be decreased to zero at most and the negative
> overflow never happens.
>
> The patch adds 'likely' because we rarely would not hit the loop codition
> since the standard budget is 256.
>
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>

Hi Tony,

Any update here? Thanks! I'm asking because I'm ready to send an afxdp
patch series based on the patch :)

Thanks,
jason
