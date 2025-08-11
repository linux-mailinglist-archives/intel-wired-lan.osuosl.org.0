Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 437F0B218CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 00:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC3D184219;
	Mon, 11 Aug 2025 22:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwmygfTbVyZH; Mon, 11 Aug 2025 22:58:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC1E884212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754953093;
	bh=PVz4vozlHp9y1RUDr0UzibkJH7GSlun6qncNd3pvSP4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=46+5lgCSdELV4v6Xkm098BHdEMH3mFZPdC6LZnmzt09NN3OT9JA1E7W3KVMrhFVBC
	 6lvXmfiQ+M5eFTqHM7Q7JbP+578O/+9gZEj/A7lg3S4cahPzzPZwpG+uryVLegkx0H
	 +LQdkFM1pbmyr+kXQoE8Vvw0n4ilnka1VsqSkf6iMtQlp4pFmWDK1LEmKX2Ud6w0Z2
	 mW6lxnwIWoL2GG7+LiQiUipA13XgHwSmroFaF830uiqqNauSsiRDGNtRbqdg/Bk3OD
	 8h2lZWCF0s1fHgz88SkIy0mZUl+8oPuGX3t+ANo/Vbe1+2XrZWv40g5bra8lUxDMun
	 qVjG9Im/hC/zQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC1E884212;
	Mon, 11 Aug 2025 22:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2544E158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 22:58:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B11484205
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 22:58:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4C5mzzrLEUk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 22:58:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132; helo=mail-il1-x132.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A5A9841F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A5A9841F7
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com
 [IPv6:2607:f8b0:4864:20::132])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A5A9841F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 22:58:10 +0000 (UTC)
Received: by mail-il1-x132.google.com with SMTP id
 e9e14a558f8ab-3e40ac40940so23573885ab.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:58:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754953090; x=1755557890;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PVz4vozlHp9y1RUDr0UzibkJH7GSlun6qncNd3pvSP4=;
 b=wsg7cYz2HziVGREQ6rxf9wGi1IDUNyLujO/JVGfpXjbSiLEOFbZtat5GoKFjjd/u+V
 rw575LnZV/YawG6shdMYi/ITnBji1nq+Sve6ZYBkd4mi5X2Vr4ziX34WPRThiCtwc3GA
 KXVIFJwliDk9ps0mcgbViAc3JGe+2xMlKekm9ueVInftfOcvVvIM79NGKVObpbRjTNls
 v9q6qSqLkk6brt1DcXMeAqtbVaV2G1LOTzsi1t3ilu64au8uCLO1zFH55uDQpvqU9WtD
 ZNGpbZiLXF4BBuFSvGsG44PwvbzjjS7aJXo6vEzx/d0DESBDEdiRGqUj2c8yGanjq0fm
 suVw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1a6jir9/oDG3djQ3m9m94o7O9slM46sRjswD2R2wjH9g1JVCmgPgiccDzbnhcjWeHqEIJ6Kd8Vqg5EBuRefI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzzjm9zuYwgm99YH6rTdkDdogV/zFtCVIaUi4r7PmHF9zhXV7ef
 GnGlJAzSN4XYvSN/xm0GlQ4CGY1yfaCY/W1ShzQpbW+6r501ozltDXd7hArx59QR/3p/T0SU59U
 qIzWUhUAkUZNl0lkWmafO7vxq6jOVkqo=
X-Gm-Gg: ASbGnctDzDVF//Yz8Frkcnyi5bUZFDLxPLwQmM/N+UK6SFBLRV/u3DetGiToWWl2rAM
 o3uyaJ20TpCopH5/q1DivkBm0N/Pvv3QFyyDS1GngbRVh9rHNYbgVnbC/ka2m5dygmS85/FqRxY
 7UN5DYTrL2U/+e4ROAQI1vz5Z8S+lG7St/h8JSJy40UUEdNhRcKGFoPNGMxAzrEKW3hYOO1PigR
 5TLpQ==
X-Google-Smtp-Source: AGHT+IHvOitDXKIs4WhQwxzhDVxXHbsLiBvTJ/NLngi6Pf7bissC+I+Jd34xd5hW6IYpkSwi6u/ca/v8Yk0jjErbqSg=
X-Received: by 2002:a05:6e02:380f:b0:3e5:5952:80b9 with SMTP id
 e9e14a558f8ab-3e55acbab77mr20629895ab.11.1754953089909; Mon, 11 Aug 2025
 15:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250726070356.58183-1-kerneljasonxing@gmail.com>
 <CAL+tcoAAq9ccjUybzxoYbVG6i3Ev1C098aGKWvAvKMUeFyG3Tw@mail.gmail.com>
 <14d36e48-251d-4dbf-aafe-57259003e064@intel.com>
In-Reply-To: <14d36e48-251d-4dbf-aafe-57259003e064@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 12 Aug 2025 06:57:32 +0800
X-Gm-Features: Ac12FXwQQL3r3LVvQt-AVF5C_Z3s4vocuCAGT8fKu417DwnUgPHzE98nCRDIaVY
Message-ID: <CAL+tcoDNoZH_rnC9th8od-qu2QE8nWHgiWEATA8SVs_jc9rJnA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: przemyslaw.kitszel@intel.com, larysa.zaremba@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org, 
 maciej.fijalkowski@intel.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754953090; x=1755557890; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PVz4vozlHp9y1RUDr0UzibkJH7GSlun6qncNd3pvSP4=;
 b=i+eoP/LuFj3o+q6SO+ARkAaz5USADme4YJ1ZyN+VICqu0jrnrebQNnUQ1GAWxvWxZv
 yAi2yt+qM4V9KGGWSfE3V4iy+nyfx/DIaUrvLifr5K8dCbusss7arhvWD4Xn4WDt7utN
 /h7i81WoLmHUCpAM1ltUMmJsyus8otiIsQdze38Yf0tku+o0bcNMoWZKq738HyZZSSPW
 O/WVzRQM7jkmqtONQF0WNdOgjMjCo49bma61iQufuzu+oSv+VlzpMASFXh5mk+qLe0mI
 p1I0/xj83KBj6oU7yxnQnDMjFWdS25/jUB6AbBXXDrlI+f5iOPthSjUyBGAhBN2v/K5F
 28ww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=i+eoP/Lu
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

On Tue, Aug 12, 2025 at 5:38=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
>
>
> On 8/10/2025 5:22 AM, Jason Xing wrote:
> > On Sat, Jul 26, 2025 at 3:04=E2=80=AFPM Jason Xing <kerneljasonxing@gma=
il.com> wrote:
> >>
> >> From: Jason Xing <kernelxing@tencent.com>
> >>
> >> Resolve the budget negative overflow which leads to returning true in
> >> ixgbe_xmit_zc even when the budget of descs are thoroughly consumed.
> >>
> >> Before this patch, when the budget is decreased to zero and finishes
> >> sending the last allowed desc in ixgbe_xmit_zc, it will always turn ba=
ck
> >> and enter into the while() statement to see if it should keep processi=
ng
> >> packets, but in the meantime it unexpectedly decreases the value again=
 to
> >> 'unsigned int (0--)', namely, UINT_MAX. Finally, the ixgbe_xmit_zc ret=
urns
> >> true, showing 'we complete cleaning the budget'. That also means
> >> 'clean_complete =3D true' in ixgbe_poll.
> >>
> >> The true theory behind this is if that budget number of descs are cons=
umed,
> >> it implies that we might have more descs to be done. So we should retu=
rn
> >> false in ixgbe_xmit_zc to tell napi poll to find another chance to sta=
rt
> >> polling to handle the rest of descs. On the contrary, returning true h=
ere
> >> means job done and we know we finish all the possible descs this time =
and
> >> we don't intend to start a new napi poll.
> >>
> >> It is apparently against our expectations. Please also see how
> >> ixgbe_clean_tx_irq() handles the problem: it uses do..while() statemen=
t
> >> to make sure the budget can be decreased to zero at most and the negat=
ive
> >> overflow never happens.
> >>
> >> The patch adds 'likely' because we rarely would not hit the loop codit=
ion
> >> since the standard budget is 256.
> >>
> >> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> >> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> >> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> >
> > Hi Tony,
> >
> > Any update here? Thanks! I'm asking because I'm ready to send an afxdp
> > patch series based on the patch :)
>
> Hi Jason,
>
> I have this slated to be part of my next net series. I do already have
> this patch applied/staged on the Intel tree [1] (dev-queue branch). You
> can base it on that and send the changes now; I'll ensure that this
> patch is merged before sending the other series.
>
> Thanks,
> Tony
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/

Great, thanks for the pointer!

Thanks,
Jason
