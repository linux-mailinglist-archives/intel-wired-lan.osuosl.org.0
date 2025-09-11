Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F346B53D1F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Sep 2025 22:25:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA1F74241C;
	Thu, 11 Sep 2025 20:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O4ahCIKpTv2p; Thu, 11 Sep 2025 20:25:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B9D34241E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757622306;
	bh=dMqB4mz4Euh7GFhJjEw2J/VENmZNZDippTR7BssmvZQ=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FOgLjfcW+rVUe5uUKeLqbgMwgnRlzxAaEclQxpeoDxRlNpu3NNlLKI1unS/Wn6w4C
	 lZHRrs4mwmtyzEbdVSsWHWm3EUH/6D3Gi/vYVLodmSxbTKj22IMeeBxwcnlsosJA6p
	 IL8tE+sLpqokl92eJVappQyTtG6gtIM8/Jw8MjLne1aR23QDRVgO4S2jSLCWictSPX
	 ibiAHcrjI/peltYqxZ3MNVlUXZQy8OI4+1UMNu4owkSzTkUw3b6xCSVLPrHmrqdhhf
	 ieTfThM/5dWuJ81BXPpa9NAkkpNUYgkrLGI9+E5gh61e7QCK7/g4lDcrhwsKBedC+T
	 ofXKXtTKmIyUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B9D34241E;
	Thu, 11 Sep 2025 20:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C4662234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA28D420E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUx8ehGgEUnV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 16:02:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com;
 envelope-from=namangulati@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F3BAF420AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3BAF420AF
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F3BAF420AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 16:02:17 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-560885b40e2so9518e87.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 09:02:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757606536; x=1758211336;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dMqB4mz4Euh7GFhJjEw2J/VENmZNZDippTR7BssmvZQ=;
 b=JHzriuTpknmsf5oPNmZOUrVGJGiJbRWNu6HMtrrLNre8HuBDKD5XFhUEqpCxgoIdQz
 u6RfrJ06fz/msHkdt9OAneTdn23HC0bnlOWsAeKiolWXoMmEDMs1Y52khN6uoUaJ5D1j
 lPEgBv/74cADUaKgFq5jc0UTyUmK021UW1pIYB6IB73TcZEwardiTRbEQXn3h5GeMxXR
 kLYwWI6+al0Utz2JE+9JJUSqU0+I91UqXg2D3OJuJ/ipZcaI+YX7LoZwVK8CxuSe499G
 H7p2vLDUr08UqKBg6HmwVJcrILYx3cPBzntYc4S7DXz41yw2hMB+O4M+ZScT2b89U3Vn
 CykQ==
X-Gm-Message-State: AOJu0Yx9b0RLZWM+GNs/cgzFExvUkOv/0g5MrOIDPap/YMC6KqsNTE8c
 2GSazNMgXMVFhZLgGvTtcEXcv6gsAT/vpEPuK+b8q6hdfpvBhJKk3WI12aJMs44ZLSa8jMe0uH+
 L/sKY24xXRcbSKISUNFjY6XOU6TUvwEE/wcheBHZl
X-Gm-Gg: ASbGnctIPIZHazmpr1PKRNSHtoR00p2NWzkHYVwdHWRnwMjGHQYZw33ZiU95MWGIMtb
 TuUqQYAL8jveytZVs0K5RN5BDceFLIjywGUOYICKudPVYZswtNc2YWMZ3PUSJyo9a2RZ2K69lCC
 8Nh/0lS88sCWs4aFRXoZUCOn7tpMvGWATVSpLozfpcxy3/3I6IVYEO++m1ksnUvPntTN23FiMyI
 bFw/mr3+2peXbb5MZmuHSPxuaMvoySEoHl2PgvUFce7Jba8fMRmX08=
X-Google-Smtp-Source: AGHT+IF/5OpRLIv2JlGhtXm0B6Xkw8h4dsVnoLbbYTL/tED084o3PoOeFvAfTMTmTCh2k8jdXH1xWhs9x2Nl83gCu7A=
X-Received: by 2002:a05:6512:1407:b0:55f:6c1e:4191 with SMTP id
 2adb3069b0e04-56af1d86c54mr745926e87.4.1757606534942; Thu, 11 Sep 2025
 09:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250902105321.5750-1-anton.nadezhdin@intel.com>
 <20250902105321.5750-2-anton.nadezhdin@intel.com>
In-Reply-To: <20250902105321.5750-2-anton.nadezhdin@intel.com>
From: Naman Gulati <namangulati@google.com>
Date: Thu, 11 Sep 2025 09:02:03 -0700
X-Gm-Features: AS18NWCB_FbdGqlYPfE8yzRjV0t1DYDiURP9Qy93aY2gOYksgbZGzVjPtheC1qM
Message-ID: <CAMP57yVGEJaOwmgQd2f2XJKBXLLN_dWk2HkqAgDz8c1fGpUQOQ@mail.gmail.com>
To: Anton Nadezhdin <anton.nadezhdin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, richardcochran@gmail.com, 
 Milena Olech <milena.olech@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 11 Sep 2025 20:25:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1757606536; x=1758211336; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dMqB4mz4Euh7GFhJjEw2J/VENmZNZDippTR7BssmvZQ=;
 b=MNbXp8tlsHt22Nu3xI+5f2hsGgQiVMg38A+HIwvYG4ifBc1RZW9q4y+SnA1opoi5wc
 K+wRWv0ecegi6vIcsRqcFhmEr9AgI94kbKUgl+d/JOr82B6AVwGEN5gBX7zroTZCurZa
 Wz8Wr6HbnJe55K3UIDvEQqF0TnfSdDPA224YzaW/ZSTQSjHgoQQD3zT0EflH4KkQhgE9
 lG+mFcJO2hXth1YzrVQcEFYYWQKfxgp+0/VVNaRkawX8WiI1CWFaGgzJ7AydmtRUrdZV
 s0PWZr/20QSVzMyuApkOiRZKKSy9Xxyj1Pjn6SzHz3SrBfpfHOpNIfbf7SXP4ZfzC0OK
 wk3A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=MNbXp8tl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] idpf: add direct access
 to discipline the main timer
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

Ran all of the PHC set/adj/adjfine operations. Not able to validate
the hardware correctness, but exercised the full datapaths.

Tested-by: Naman Gulati <namangulati@google.com>

On Tue, Sep 2, 2025 at 2:03=E2=80=AFAM Anton Nadezhdin
<anton.nadezhdin@intel.com> wrote:
>
> From: Milena Olech <milena.olech@intel.com>
>
> IDPF allows to access the clock through virtchnl messages, or directly,
> through PCI BAR registers. Registers offsets are negotiated with the
> Control Plane during driver initialization process.
> Add support for direct operations to modify the clock.
>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |   4 +-
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 192 ++++++++++++++----
>  drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  60 +++---
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  31 +--
>  4 files changed, 207 insertions(+), 80 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/eth=
ernet/intel/idpf/idpf_dev.c
> index a4625638cf3f..344975352fad 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> @@ -171,8 +171,8 @@ static void idpf_trigger_reset(struct idpf_adapter *a=
dapter,
>   */
>  static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
>  {
> -       adapter->ptp->cmd.shtime_enable_mask =3D PF_GLTSYN_CMD_SYNC_SHTIM=
E_EN_M;
> -       adapter->ptp->cmd.exec_cmd_mask =3D PF_GLTSYN_CMD_SYNC_EXEC_CMD_M=
;
> +       adapter->ptp->cmd.shtime_enable =3D PF_GLTSYN_CMD_SYNC_SHTIME_EN_=
M;
> +       adapter->ptp->cmd.exec_cmd =3D PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
>  }
>
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/eth=
ernet/intel/idpf/idpf_ptp.c
> index 990e78686786..b19dbddf95bf 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -80,14 +80,30 @@ static void idpf_ptp_enable_shtime(struct idpf_adapte=
r *adapter)
>         u32 shtime_enable, exec_cmd;
>
>         /* Get offsets */
> -       shtime_enable =3D adapter->ptp->cmd.shtime_enable_mask;
> -       exec_cmd =3D adapter->ptp->cmd.exec_cmd_mask;
> +       shtime_enable =3D adapter->ptp->cmd.shtime_enable;
> +       exec_cmd =3D adapter->ptp->cmd.exec_cmd;
>
>         /* Set the shtime en and the sync field */
>         writel(shtime_enable, adapter->ptp->dev_clk_regs.cmd_sync);
>         writel(exec_cmd | shtime_enable, adapter->ptp->dev_clk_regs.cmd_s=
ync);
>  }
>
> +/**
> + * idpf_ptp_tmr_cmd - Prepare and trigger a timer sync command
> + * @adapter: Driver specific private structure
> + * @cmd: Command to be executed
> + */
> +static void idpf_ptp_tmr_cmd(struct idpf_adapter *adapter, u32 cmd)
> +{
> +       struct idpf_ptp *ptp =3D adapter->ptp;
> +       u32 exec_cmd =3D ptp->cmd.exec_cmd;
> +
> +       writel(cmd, ptp->dev_clk_regs.cmd);
> +       writel(cmd, ptp->dev_clk_regs.phy_cmd);
> +       writel(exec_cmd, ptp->dev_clk_regs.cmd_sync);
> +       writel(0, ptp->dev_clk_regs.cmd);
> +}
> +
>  /**
>   * idpf_ptp_read_src_clk_reg_direct - Read directly the main timer value
>   * @adapter: Driver specific private structure
> @@ -139,7 +155,7 @@ static int idpf_ptp_read_src_clk_reg_mailbox(struct i=
dpf_adapter *adapter,
>         /* Read the system timestamp pre PHC read */
>         ptp_read_system_prets(sts);
>
> -       err =3D idpf_ptp_get_dev_clk_time(adapter, &clk_time);
> +       err =3D idpf_ptp_get_dev_clk_time_mb(adapter, &clk_time);
>         if (err)
>                 return err;
>
> @@ -223,7 +239,7 @@ static int idpf_ptp_get_sync_device_time_mailbox(stru=
ct idpf_adapter *adapter,
>         struct idpf_ptp_dev_timers cross_time;
>         int err;
>
> -       err =3D idpf_ptp_get_cross_time(adapter, &cross_time);
> +       err =3D idpf_ptp_get_cross_time_mb(adapter, &cross_time);
>         if (err)
>                 return err;
>
> @@ -403,6 +419,33 @@ static int idpf_ptp_update_cached_phctime(struct idp=
f_adapter *adapter)
>         return 0;
>  }
>
> +/**
> + * idpf_ptp_set_dev_clk_time_direct- Set the time of the clock directly =
through
> + *                                  BAR registers.
> + * @adapter: Driver specific private structure
> + * @dev_clk_time: Value expressed in nanoseconds to set
> + *
> + * Set the time of the device clock to provided value directly through B=
AR
> + * registers received during PTP capabilities negotiation.
> + */
> +static void idpf_ptp_set_dev_clk_time_direct(struct idpf_adapter *adapte=
r,
> +                                            u64 dev_clk_time)
> +{
> +       struct idpf_ptp *ptp =3D adapter->ptp;
> +       u32 dev_clk_time_l, dev_clk_time_h;
> +
> +       dev_clk_time_l =3D lower_32_bits(dev_clk_time);
> +       dev_clk_time_h =3D upper_32_bits(dev_clk_time);
> +
> +       writel(dev_clk_time_l, ptp->dev_clk_regs.dev_clk_ns_l);
> +       writel(dev_clk_time_h, ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +       writel(dev_clk_time_l, ptp->dev_clk_regs.phy_clk_ns_l);
> +       writel(dev_clk_time_h, ptp->dev_clk_regs.phy_clk_ns_h);
> +
> +       idpf_ptp_tmr_cmd(adapter, ptp->cmd.init_time);
> +}
> +
>  /**
>   * idpf_ptp_settime64 - Set the time of the clock
>   * @info: the driver's PTP info structure
> @@ -422,16 +465,20 @@ static int idpf_ptp_settime64(struct ptp_clock_info=
 *info,
>         u64 ns;
>
>         access =3D adapter->ptp->set_dev_clk_time_access;
> -       if (access !=3D IDPF_PTP_MAILBOX)
> +       if (access =3D=3D IDPF_PTP_NONE)
>                 return -EOPNOTSUPP;
>
>         ns =3D timespec64_to_ns(ts);
>
> -       err =3D idpf_ptp_set_dev_clk_time(adapter, ns);
> -       if (err) {
> -               pci_err(adapter->pdev, "Failed to set the time, err: %pe\=
n",
> -                       ERR_PTR(err));
> -               return err;
> +       if (access =3D=3D IDPF_PTP_MAILBOX) {
> +               err =3D idpf_ptp_set_dev_clk_time_mb(adapter, ns);
> +               if (err) {
> +                       pci_err(adapter->pdev,
> +                               "Failed to set the time: %pe\n", ERR_PTR(=
err));
> +                       return err;
> +               }
> +       } else {
> +               idpf_ptp_set_dev_clk_time_direct(adapter, ns);
>         }
>
>         err =3D idpf_ptp_update_cached_phctime(adapter);
> @@ -464,6 +511,30 @@ static int idpf_ptp_adjtime_nonatomic(struct ptp_clo=
ck_info *info, s64 delta)
>         return idpf_ptp_settime64(info, &now);
>  }
>
> +/**
> + * idpf_ptp_adj_dev_clk_time_direct - Adjust the time of the clock direc=
tly
> + *                                   through BAR registers.
> + * @adapter: Driver specific private structure
> + * @delta: Offset in nanoseconds to adjust the time by
> + *
> + * Adjust the time of the clock directly through BAR registers received =
during
> + * PTP capabilities negotiation.
> + */
> +static void idpf_ptp_adj_dev_clk_time_direct(struct idpf_adapter *adapte=
r,
> +                                            s64 delta)
> +{
> +       struct idpf_ptp *ptp =3D adapter->ptp;
> +       u32 delta_l =3D (s32)delta;
> +
> +       writel(0, ptp->dev_clk_regs.shadj_l);
> +       writel(delta_l, ptp->dev_clk_regs.shadj_h);
> +
> +       writel(0, ptp->dev_clk_regs.phy_shadj_l);
> +       writel(delta_l, ptp->dev_clk_regs.phy_shadj_h);
> +
> +       idpf_ptp_tmr_cmd(adapter, ptp->cmd.adj_time);
> +}
> +
>  /**
>   * idpf_ptp_adjtime - Adjust the time of the clock by the indicated delt=
a
>   * @info: the driver's PTP info structure
> @@ -478,7 +549,7 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *in=
fo, s64 delta)
>         int err;
>
>         access =3D adapter->ptp->adj_dev_clk_time_access;
> -       if (access !=3D IDPF_PTP_MAILBOX)
> +       if (access =3D=3D IDPF_PTP_NONE)
>                 return -EOPNOTSUPP;
>
>         /* Hardware only supports atomic adjustments using signed 32-bit
> @@ -488,11 +559,16 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *=
info, s64 delta)
>         if (delta > S32_MAX || delta < S32_MIN)
>                 return idpf_ptp_adjtime_nonatomic(info, delta);
>
> -       err =3D idpf_ptp_adj_dev_clk_time(adapter, delta);
> -       if (err) {
> -               pci_err(adapter->pdev, "Failed to adjust the clock with d=
elta %lld err: %pe\n",
> -                       delta, ERR_PTR(err));
> -               return err;
> +       if (access =3D=3D IDPF_PTP_MAILBOX) {
> +               err =3D idpf_ptp_adj_dev_clk_time_mb(adapter, delta);
> +               if (err) {
> +                       pci_err(adapter->pdev,
> +                               "Failed to adjust the clock with delta %l=
ld err: %pe\n",
> +                               delta, ERR_PTR(err));
> +                       return err;
> +               }
> +       } else {
> +               idpf_ptp_adj_dev_clk_time_direct(adapter, delta);
>         }
>
>         err =3D idpf_ptp_update_cached_phctime(adapter);
> @@ -503,6 +579,33 @@ static int idpf_ptp_adjtime(struct ptp_clock_info *i=
nfo, s64 delta)
>         return 0;
>  }
>
> +/**
> + * idpf_ptp_adj_dev_clk_fine_direct - Adjust clock increment rate direct=
ly
> + *                                   through BAR registers.
> + * @adapter: Driver specific private structure
> + * @incval: Source timer increment value per clock cycle
> + *
> + * Adjust clock increment rate directly through BAR registers received d=
uring
> + * PTP capabilities negotiation.
> + */
> +static void idpf_ptp_adj_dev_clk_fine_direct(struct idpf_adapter *adapte=
r,
> +                                            u64 incval)
> +{
> +       struct idpf_ptp *ptp =3D adapter->ptp;
> +       u32 incval_l, incval_h;
> +
> +       incval_l =3D lower_32_bits(incval);
> +       incval_h =3D upper_32_bits(incval);
> +
> +       writel(incval_l, ptp->dev_clk_regs.shadj_l);
> +       writel(incval_h, ptp->dev_clk_regs.shadj_h);
> +
> +       writel(incval_l, ptp->dev_clk_regs.phy_shadj_l);
> +       writel(incval_h, ptp->dev_clk_regs.phy_shadj_h);
> +
> +       idpf_ptp_tmr_cmd(adapter, ptp->cmd.init_incval);
> +}
> +
>  /**
>   * idpf_ptp_adjfine - Adjust clock increment rate
>   * @info: the driver's PTP info structure
> @@ -521,16 +624,22 @@ static int idpf_ptp_adjfine(struct ptp_clock_info *=
info, long scaled_ppm)
>         int err;
>
>         access =3D adapter->ptp->adj_dev_clk_time_access;
> -       if (access !=3D IDPF_PTP_MAILBOX)
> +       if (access =3D=3D IDPF_PTP_NONE)
>                 return -EOPNOTSUPP;
>
>         incval =3D adapter->ptp->base_incval;
> -
>         diff =3D adjust_by_scaled_ppm(incval, scaled_ppm);
> -       err =3D idpf_ptp_adj_dev_clk_fine(adapter, diff);
> -       if (err)
> -               pci_err(adapter->pdev, "Failed to adjust clock increment =
rate for scaled ppm %ld %pe\n",
> -                       scaled_ppm, ERR_PTR(err));
> +
> +       if (access =3D=3D IDPF_PTP_MAILBOX) {
> +               err =3D idpf_ptp_adj_dev_clk_fine_mb(adapter, diff);
> +               if (err) {
> +                       pci_err(adapter->pdev,
> +                               "Failed to adjust clock increment rate\n"=
);
> +                       return err;
> +               }
> +       } else {
> +               idpf_ptp_adj_dev_clk_fine_direct(adapter, diff);
> +       }
>
>         return 0;
>  }
> @@ -757,7 +866,7 @@ void idpf_tstamp_task(struct work_struct *work)
>
>         vport =3D container_of(work, struct idpf_vport, tstamp_task);
>
> -       idpf_ptp_get_tx_tstamp(vport);
> +       idpf_ptp_get_tx_tstamp_mb(vport);
>  }
>
>  /**
> @@ -928,6 +1037,7 @@ bool idpf_ptp_get_txq_tstamp_capability(struct idpf_=
tx_queue *txq)
>   */
>  int idpf_ptp_init(struct idpf_adapter *adapter)
>  {
> +       struct idpf_ptp *ptp;
>         struct timespec64 ts;
>         int err;
>
> @@ -940,8 +1050,10 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>         if (!adapter->ptp)
>                 return -ENOMEM;
>
> +       ptp =3D adapter->ptp;
> +
>         /* add a back pointer to adapter */
> -       adapter->ptp->adapter =3D adapter;
> +       ptp->adapter =3D adapter;
>
>         if (adapter->dev_ops.reg_ops.ptp_reg_init)
>                 adapter->dev_ops.reg_ops.ptp_reg_init(adapter);
> @@ -951,47 +1063,51 @@ int idpf_ptp_init(struct idpf_adapter *adapter)
>                 pci_err(adapter->pdev, "Failed to get PTP caps err %d\n",=
 err);
>                 goto free_ptp;
>         }
> +       /* Do not initialize the PTP if the device clock time cannot be r=
ead. */
> +       if (ptp->get_dev_clk_time_access =3D=3D IDPF_PTP_NONE) {
> +               err =3D -EIO;
> +               goto free_ptp;
> +       }
>
>         err =3D idpf_ptp_create_clock(adapter);
>         if (err)
>                 goto free_ptp;
> -
> -       if (adapter->ptp->get_dev_clk_time_access !=3D IDPF_PTP_NONE)
> -               ptp_schedule_worker(adapter->ptp->clock, 0);
> +       ptp_schedule_worker(ptp->clock, 0);
>
>         /* Write the default increment time value if the clock adjustment=
s
>          * are enabled.
>          */
> -       if (adapter->ptp->adj_dev_clk_time_access !=3D IDPF_PTP_NONE) {
> -               err =3D idpf_ptp_adj_dev_clk_fine(adapter,
> -                                               adapter->ptp->base_incval=
);
> +       if (ptp->adj_dev_clk_time_access =3D=3D IDPF_PTP_MAILBOX) {
> +               err =3D idpf_ptp_adj_dev_clk_fine_mb(adapter, ptp->base_i=
ncval);
>                 if (err)
>                         goto remove_clock;
> +       } else if (ptp->adj_dev_clk_time_access =3D=3D IDPF_PTP_DIRECT) {
> +               idpf_ptp_adj_dev_clk_fine_direct(adapter, ptp->base_incva=
l);
>         }
>
>         /* Write the initial time value if the set time operation is enab=
led */
> -       if (adapter->ptp->set_dev_clk_time_access !=3D IDPF_PTP_NONE) {
> +       if (ptp->set_dev_clk_time_access !=3D IDPF_PTP_NONE) {
>                 ts =3D ktime_to_timespec64(ktime_get_real());
> -               err =3D idpf_ptp_settime64(&adapter->ptp->info, &ts);
> +               err =3D idpf_ptp_settime64(&ptp->info, &ts);
>                 if (err)
>                         goto remove_clock;
>         }
>
> -       spin_lock_init(&adapter->ptp->read_dev_clk_lock);
> +       spin_lock_init(&ptp->read_dev_clk_lock);
>
>         pci_dbg(adapter->pdev, "PTP init successful\n");
>
>         return 0;
>
>  remove_clock:
> -       if (adapter->ptp->get_dev_clk_time_access !=3D IDPF_PTP_NONE)
> -               ptp_cancel_worker_sync(adapter->ptp->clock);
> +       if (ptp->get_dev_clk_time_access !=3D IDPF_PTP_NONE)
> +               ptp_cancel_worker_sync(ptp->clock);
>
> -       ptp_clock_unregister(adapter->ptp->clock);
> -       adapter->ptp->clock =3D NULL;
> +       ptp_clock_unregister(ptp->clock);
> +       ptp->clock =3D NULL;
>
>  free_ptp:
> -       kfree(adapter->ptp);
> +       kfree(ptp);
>         adapter->ptp =3D NULL;
>
>         return err;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/eth=
ernet/intel/idpf/idpf_ptp.h
> index 785da03e4cf5..26cc616f420c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -7,13 +7,21 @@
>  #include <linux/ptp_clock_kernel.h>
>
>  /**
> - * struct idpf_ptp_cmd - PTP command masks
> - * @exec_cmd_mask: mask to trigger command execution
> - * @shtime_enable_mask: mask to enable shadow time
> + * struct idpf_ptp_cmd_mask - PTP command masks
> + * @exec_cmd: mask to trigger command execution
> + * @shtime_enable: mask to enable shadow time
> + * @init_time: initialize the device clock timer
> + * @init_incval: initialize increment value
> + * @adj_time: adjust the device clock timer
> + * @read_time: read the device clock timer
>   */
> -struct idpf_ptp_cmd {
> -       u32 exec_cmd_mask;
> -       u32 shtime_enable_mask;
> +struct idpf_ptp_cmd_mask {
> +       u32 exec_cmd;
> +       u32 shtime_enable;
> +       u32 init_time;
> +       u32 init_incval;
> +       u32 adj_time;
> +       u32 read_time;
>  };
>
>  /* struct idpf_ptp_dev_clk_regs - PTP device registers
> @@ -183,7 +191,7 @@ struct idpf_ptp {
>         struct idpf_adapter *adapter;
>         u64 base_incval;
>         u64 max_adj;
> -       struct idpf_ptp_cmd cmd;
> +       struct idpf_ptp_cmd_mask cmd;
>         u64 cached_phc_time;
>         unsigned long cached_phc_jiffies;
>         struct idpf_ptp_dev_clk_regs dev_clk_regs;
> @@ -270,15 +278,15 @@ void idpf_ptp_release(struct idpf_adapter *adapter)=
;
>  int idpf_ptp_get_caps(struct idpf_adapter *adapter);
>  void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
>  bool idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_queue *txq);
> -int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
> -                             struct idpf_ptp_dev_timers *dev_clk_time);
> -int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> -                           struct idpf_ptp_dev_timers *cross_time);
> -int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time);
> -int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval);
> -int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta);
> +int idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
> +                              struct idpf_ptp_dev_timers *cross_time);
> +int idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
> +                                struct idpf_ptp_dev_timers *dev_clk_time=
);
> +int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adapter, u64 time)=
;
> +int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter, u64 incva=
l);
> +int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter, s64 delta=
);
>  int idpf_ptp_get_vport_tstamps_caps(struct idpf_vport *vport);
> -int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport);
> +int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport);
>  int idpf_ptp_set_timestamp_mode(struct idpf_vport *vport,
>                                 struct kernel_hwtstamp_config *config);
>  u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp);
> @@ -309,33 +317,33 @@ idpf_ptp_get_txq_tstamp_capability(struct idpf_tx_q=
ueue *txq)
>  }
>
>  static inline int
> -idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
> -                         struct idpf_ptp_dev_timers *dev_clk_time)
> +idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
> +                            struct idpf_ptp_dev_timers *dev_clk_time)
>  {
>         return -EOPNOTSUPP;
>  }
>
>  static inline int
> -idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> -                       struct idpf_ptp_dev_timers *cross_time)
> +idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
> +                          struct idpf_ptp_dev_timers *cross_time)
>  {
>         return -EOPNOTSUPP;
>  }
>
> -static inline int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter=
,
> -                                           u64 time)
> +static inline int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adap=
ter,
> +                                              u64 time)
>  {
>         return -EOPNOTSUPP;
>  }
>
> -static inline int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter=
,
> -                                           u64 incval)
> +static inline int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adap=
ter,
> +                                              u64 incval)
>  {
>         return -EOPNOTSUPP;
>  }
>
> -static inline int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter=
,
> -                                           s64 delta)
> +static inline int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adap=
ter,
> +                                              s64 delta)
>  {
>         return -EOPNOTSUPP;
>  }
> @@ -345,7 +353,7 @@ static inline int idpf_ptp_get_vport_tstamps_caps(str=
uct idpf_vport *vport)
>         return -EOPNOTSUPP;
>  }
>
> -static inline int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> +static inline int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport)
>  {
>         return -EOPNOTSUPP;
>  }
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/driver=
s/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> index 61cedb6f2854..f85caba92b17 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -20,7 +20,10 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>                 .caps =3D cpu_to_le32(VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TI=
ME |
>                                     VIRTCHNL2_CAP_PTP_GET_DEVICE_CLK_TIME=
_MB |
>                                     VIRTCHNL2_CAP_PTP_GET_CROSS_TIME |
> +                                   VIRTCHNL2_CAP_PTP_GET_CROSS_TIME_MB |
> +                                   VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME=
 |
>                                     VIRTCHNL2_CAP_PTP_SET_DEVICE_CLK_TIME=
_MB |
> +                                   VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK |
>                                     VIRTCHNL2_CAP_PTP_ADJ_DEVICE_CLK_MB |
>                                     VIRTCHNL2_CAP_PTP_TX_TSTAMPS_MB)
>         };
> @@ -144,7 +147,7 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>  }
>
>  /**
> - * idpf_ptp_get_dev_clk_time - Send virtchnl get device clk time message
> + * idpf_ptp_get_dev_clk_time_mb - Send virtchnl get device clk time mess=
age
>   * @adapter: Driver specific private structure
>   * @dev_clk_time: Pointer to the device clock structure where the value =
is set
>   *
> @@ -152,8 +155,8 @@ int idpf_ptp_get_caps(struct idpf_adapter *adapter)
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_get_dev_clk_time(struct idpf_adapter *adapter,
> -                             struct idpf_ptp_dev_timers *dev_clk_time)
> +int idpf_ptp_get_dev_clk_time_mb(struct idpf_adapter *adapter,
> +                                struct idpf_ptp_dev_timers *dev_clk_time=
)
>  {
>         struct virtchnl2_ptp_get_dev_clk_time get_dev_clk_time_msg;
>         struct idpf_vc_xn_params xn_params =3D {
> @@ -180,7 +183,7 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *ad=
apter,
>  }
>
>  /**
> - * idpf_ptp_get_cross_time - Send virtchnl get cross time message
> + * idpf_ptp_get_cross_time_mb - Send virtchnl get cross time message
>   * @adapter: Driver specific private structure
>   * @cross_time: Pointer to the device clock structure where the value is=
 set
>   *
> @@ -189,8 +192,8 @@ int idpf_ptp_get_dev_clk_time(struct idpf_adapter *ad=
apter,
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_get_cross_time(struct idpf_adapter *adapter,
> -                           struct idpf_ptp_dev_timers *cross_time)
> +int idpf_ptp_get_cross_time_mb(struct idpf_adapter *adapter,
> +                              struct idpf_ptp_dev_timers *cross_time)
>  {
>         struct virtchnl2_ptp_get_cross_time cross_time_msg;
>         struct idpf_vc_xn_params xn_params =3D {
> @@ -216,7 +219,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adap=
ter,
>  }
>
>  /**
> - * idpf_ptp_set_dev_clk_time - Send virtchnl set device time message
> + * idpf_ptp_set_dev_clk_time_mb - Send virtchnl set device time message
>   * @adapter: Driver specific private structure
>   * @time: New time value
>   *
> @@ -224,7 +227,7 @@ int idpf_ptp_get_cross_time(struct idpf_adapter *adap=
ter,
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_set_dev_clk_time(struct idpf_adapter *adapter, u64 time)
> +int idpf_ptp_set_dev_clk_time_mb(struct idpf_adapter *adapter, u64 time)
>  {
>         struct virtchnl2_ptp_set_dev_clk_time set_dev_clk_time_msg =3D {
>                 .dev_time_ns =3D cpu_to_le64(time),
> @@ -249,7 +252,7 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *ad=
apter, u64 time)
>  }
>
>  /**
> - * idpf_ptp_adj_dev_clk_time - Send virtchnl adj device clock time messa=
ge
> + * idpf_ptp_adj_dev_clk_time_mb - Send virtchnl adj device clock time me=
ssage
>   * @adapter: Driver specific private structure
>   * @delta: Offset in nanoseconds to adjust the time by
>   *
> @@ -257,7 +260,7 @@ int idpf_ptp_set_dev_clk_time(struct idpf_adapter *ad=
apter, u64 time)
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *adapter, s64 delta)
> +int idpf_ptp_adj_dev_clk_time_mb(struct idpf_adapter *adapter, s64 delta=
)
>  {
>         struct virtchnl2_ptp_adj_dev_clk_time adj_dev_clk_time_msg =3D {
>                 .delta =3D cpu_to_le64(delta),
> @@ -282,7 +285,7 @@ int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *ad=
apter, s64 delta)
>  }
>
>  /**
> - * idpf_ptp_adj_dev_clk_fine - Send virtchnl adj time message
> + * idpf_ptp_adj_dev_clk_fine_mb - Send virtchnl adj time message
>   * @adapter: Driver specific private structure
>   * @incval: Source timer increment value per clock cycle
>   *
> @@ -291,7 +294,7 @@ int idpf_ptp_adj_dev_clk_time(struct idpf_adapter *ad=
apter, s64 delta)
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_adj_dev_clk_fine(struct idpf_adapter *adapter, u64 incval)
> +int idpf_ptp_adj_dev_clk_fine_mb(struct idpf_adapter *adapter, u64 incva=
l)
>  {
>         struct virtchnl2_ptp_adj_dev_clk_fine adj_dev_clk_fine_msg =3D {
>                 .incval =3D cpu_to_le64(incval),
> @@ -610,7 +613,7 @@ idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adap=
ter *adapter,
>  }
>
>  /**
> - * idpf_ptp_get_tx_tstamp - Send virtchnl get Tx timestamp latches messa=
ge
> + * idpf_ptp_get_tx_tstamp_mb - Send virtchnl get Tx timestamp latches me=
ssage
>   * @vport: Virtual port structure
>   *
>   * Send virtchnl get Tx tstamp message to read the value of the HW times=
tamp.
> @@ -618,7 +621,7 @@ idpf_ptp_get_tx_tstamp_async_handler(struct idpf_adap=
ter *adapter,
>   *
>   * Return: 0 on success, -errno otherwise.
>   */
> -int idpf_ptp_get_tx_tstamp(struct idpf_vport *vport)
> +int idpf_ptp_get_tx_tstamp_mb(struct idpf_vport *vport)
>  {
>         struct virtchnl2_ptp_get_vport_tx_tstamp_latches *send_tx_tstamp_=
msg;
>         struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
> --
> 2.42.0
>
>
