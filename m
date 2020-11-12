Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B146B2B0CFB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 19:50:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDB182E248;
	Thu, 12 Nov 2020 18:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdI+CNcYIneJ; Thu, 12 Nov 2020 18:50:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DBAA42045E;
	Thu, 12 Nov 2020 18:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F1F71BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 18:50:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A0C7859B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 18:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDVxGJodRM11 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 18:50:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D70C820E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 18:50:32 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id l2so10004068lfk.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 10:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D24FTuaZWzbGOEo48aAcWjpT1Kv+9zfnbSBS0jxX59s=;
 b=pvqwF2NszFwnS45S05r9qcmPP3l+m1JKiJgCu0HiuBF+MoMyBP6sF7qTXqw8f/Ql8X
 c7nvSnPXRvKqr9eoyYOYGLd8qhC9xu/4oi8rNbiYZe+imitESSSqzInVHsrubWmYjK6N
 pJP2624xdmV/uWm8NLbikkz9hZZyVMu9h70lvqWnbCl1iRDBMuRU7VUIDZCjIg9+Nt62
 ohmRswWe1MEYamv6Zs5TkdMF2AFoLLo12eT4CwdpUejhxikJSGBGPyho1eV7jHdD5L7P
 2IJfUVmmpSV4StIkGqcvfWyudBgfb83tWhJ8U1ViGBQP326OG4K7gy4zpBnpFaAMlZX+
 4y0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D24FTuaZWzbGOEo48aAcWjpT1Kv+9zfnbSBS0jxX59s=;
 b=DSvnJHBbI8mMtLsTl3I076/niZthDkEzGKVH+caWXblGIN/NRBlGdNqlRiKMu6+ofv
 1Ky4zpDxLZLqZYy2y8g2lrEgfzCJ7/9z94PO6hfg6dxX2l136exl7a8cVHDwHJWv2+W5
 GDrsFm+9AP3smn4QEEMRnUuPmJpndDmO6c44vkVbUnlZ2liuo3v/cGTxhLKWMSn2bYbu
 3FE5bkiL9667jnpPpudkiaX3uOWC2kCMdMUSe+iwjKiVGjekde9w8zZl1yux7sIyBWu/
 TpyzxV2NIjkSx47ihKRbwqYmV52Secz/dRt0lZ0GWMvfInz1IUTZfRk94SHKy2NyFPKY
 H16g==
X-Gm-Message-State: AOAM5321vSq2VZHjob8+K+KzAscxjEkS/aTjfbWvwssy90/vOSwaCbat
 TkBjOV3Dl3LbNpDF1RF9fPzXFMFqsTLTR7MgSck=
X-Google-Smtp-Source: ABdhPJx25xCh8yzZnJ/k2OLwTC0MmI/xLmloehYXfkCby0dEfhPiKlIWywe5GUrv5YtmuZ5uZRyWzQ/jeC8HweiVgZ8=
X-Received: by 2002:a05:6512:481:: with SMTP id
 v1mr336974lfq.132.1605207030215; 
 Thu, 12 Nov 2020 10:50:30 -0800 (PST)
MIME-Version: 1.0
References: <20201111185915.813332-1-jacob.e.keller@intel.com>
In-Reply-To: <20201111185915.813332-1-jacob.e.keller@intel.com>
From: Shannon Nelson <shannon.lee.nelson@gmail.com>
Date: Thu, 12 Nov 2020 10:50:19 -0800
Message-ID: <CAP-MU4Nc=2m5=51-2D1y30U1U8svF58iFHTZGWDp0Z6FTV2CoA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [net-next PATCH] ice: report timeout length
 for erasing during devlink flash
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 11, 2020 at 11:00 AM Jacob Keller <jacob.e.keller@intel.com> wrote:
>
> When erasing, notify userspace of how long we will potentially take to
> erase a module. Doing so allows userspace to report the timeout, giving
> a clear indication of the upper time bound of the operation.
>
> Since we're re-using the erase timeout value, make it a macro rather
> than a magic number.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Shannon Nelson <snelson@pensando.io>

> ---
>  drivers/net/ethernet/intel/ice/ice_fw_update.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> index 8f81b95e679c..dcec0360ce55 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
> @@ -417,6 +417,11 @@ ice_write_nvm_module(struct ice_pf *pf, u16 module, const char *component,
>         return err;
>  }
>
> +/* Length in seconds to wait before timing out when erasing a flash module.
> + * Yes, erasing really can take minutes to complete.
> + */
> +#define ICE_FW_ERASE_TIMEOUT 300
> +
>  /**
>   * ice_erase_nvm_module - Erase an NVM module and await firmware completion
>   * @pf: the PF data structure
> @@ -449,7 +454,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
>
>         devlink = priv_to_devlink(pf);
>
> -       devlink_flash_update_status_notify(devlink, "Erasing", component, 0, 0);
> +       devlink_flash_update_timeout_notify(devlink, "Erasing", component, ICE_FW_ERASE_TIMEOUT);
>
>         status = ice_aq_erase_nvm(hw, module, NULL);
>         if (status) {
> @@ -461,8 +466,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
>                 goto out_notify_devlink;
>         }
>
> -       /* Yes, this really can take minutes to complete */
> -       err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, 300 * HZ, &event);
> +       err = ice_aq_wait_for_event(pf, ice_aqc_opc_nvm_erase, ICE_FW_ERASE_TIMEOUT * HZ, &event);
>         if (err) {
>                 dev_err(dev, "Timed out waiting for firmware to respond with erase completion for %s (module 0x%02x), err %d\n",
>                         component, module, err);
>
> base-commit: 6a4868314a36d2580a87ade92e2d3f302eec3f03
> --
> 2.29.0
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan



-- 
==============================================
Mr. Shannon Nelson         Parents can't afford to be squeamish.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
