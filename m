Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C30B42E7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 20:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF44887675;
	Wed, 12 Jun 2019 18:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5M8xAz1VLrC; Wed, 12 Jun 2019 18:21:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 892CD8765A;
	Wed, 12 Jun 2019 18:21:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A39A41BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 18:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C0C18817B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 18:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0p2n3qCAJ3Qc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 18:21:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E399A88158
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 18:21:26 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id q14so12123697itc.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LFgJjceVLK8bRVhgpl+PZ1cTjGNsIyo1uQboFFyMgXs=;
 b=BMR0f/Q/QoYMK8ZnM0TkY74Wg6BQ6zOVdI8mFAzi9oEPnUSWzwvn1EysqICHzebvUR
 Gvgr7w/xsGTu71iv9Y6F90f+sHX8kL+96ucMp91i5QTJV99PRNR5PTXIORrUN7fUT0DW
 DRclwP88+nV0EQWEPYUI+TfjThp9Vd3wqJ/jw8k03PromyHmp3Ay5XIvIOUw1HZCQhKY
 9+6QaKHXamVn/k+x2r9Q/3uyrmWIkqcekjD3237faFPlxahkKfNFoQ1T5upuv9m0Q4SD
 nvfRqGSoDtvZg7ZIGuuxQsG5NiRvE6GaCm+EQXy8sQHm49N0TAemabaLfwRgbrVtxxaX
 0QCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LFgJjceVLK8bRVhgpl+PZ1cTjGNsIyo1uQboFFyMgXs=;
 b=aiTyJK5803NyGbf8x7wrT2uZZ79czkRzLsK53n27BtxSeFN38TJBZs7Hi1tE3WboVO
 syzD2Eb+351Ul30sKWI9CuBQuVePkvVDqTXQoCFo7R17L6Hv/vGlcjiyVFSWgG0MMj//
 APK8LmP1f2hVGZgQWL1rInnkWwA6L9bmrf0GeFZzZVDKnNWjvmajVss7098386OnLQPR
 E91RdWx8fR/KfTQRUWj59pzLqCe5o6zrdIHEGC13TtfSURpsNhyrqiUjDpc1qG14sskr
 FsYSezzWuwTqWCwF2I8TjZW+7wrQd+6QSK7vLnDNx2+tdXzwzKLEljMa6YwfFgbVk+0M
 52vg==
X-Gm-Message-State: APjAAAXOuu+ep/GOf2BOSKT+PzQ3IDDbAAqbGLdtEHeP2hb+4EedixC+
 uKaph44LzbcQS1GhjFgi1IVTpdXrAWgm1UxM/AI=
X-Google-Smtp-Source: APXvYqwF23jC/VMbmrEAxTl1KyTb/waP+hsbIFM4MUgGw3eZctb/Ad7pv5DyxuXq25YHlO2iUj9LdtCiB9Y5/OKvfg8=
X-Received: by 2002:a24:d145:: with SMTP id w66mr339905itg.71.1560363685910;
 Wed, 12 Jun 2019 11:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
In-Reply-To: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 12 Jun 2019 11:21:14 -0700
Message-ID: <CAKgT0UdRcMr6Lsm4cf3rGUt9a2SutU=VGO3miAOKiYbikQsL7g@mail.gmail.com>
To: "Wang, Liang-min" <liang-min.wang@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] ixgbevf: add control of skipping PF
 link-status check
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
Cc: Guilherme Piccoli <gpiccoli@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 12, 2019 at 9:28 AM Wang, Liang-min
<liang-min.wang@intel.com> wrote:
>
> ixgbevf: add control of skipping PF link-status check
>
>
>
> The ixgbevf link status check always triggers an interrupt on Physical Function (PF) driver because
>
> it uses mailbox read to check PF link-status. For any Virtual Network Function (VNF) implementation
>
> where periodical link-status check is needed, this interrupt per request becomes a significant
>
> performance overhead. Therefore, this change uses the input parameter, autoneg_wait_to_complete, to
>
> conditionally skip the PF link-status check. For scenarios where only quick Virtual Function (VF)
>
> link status check is required, application could skip the PF interrupt by setting autoneg_wait_to_complete
>
> to "0". For cases where deep link status check (include both PF and VF link status check) is required,
>
> the application can set the autoneg_wait_to_complete to "1".
>
>
>
> Signed-off-by: Liang-Min Wang<liang-min.wang@intel.com>
>
> Reviewed-by: Jeffrey T Kirsher<jeffrey.t.kirsher@intel.com>
>
> ---
>
> drivers/net/ethernet/intel/ixgbevf/vf.c | 10 ++++++++++
>
> 1 file changed, 10 insertions(+)
>
>
>
> diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
>
> index d5ce496..951d8aa 100644
>
> --- a/drivers/net/ethernet/intel/ixgbevf/vf.c
>
> +++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
>
> @@ -694,8 +694,18 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
>
>       case IXGBE_LINKS_SPEED_100_82599:
>
>              *speed = IXGBE_LINK_SPEED_100_FULL;
>
>              break;
>
> +      default:
>
> +             *speed = IXGBE_LINK_SPEED_UNKNOWN;
>
>       }
>
> +      if (!autoneg_wait_to_complete) {
>
> +             if (*speed == IXGBE_LINK_SPEED_UNKNOWN)
>
> +                    mac->get_link_status = true;
>
> +             else
>
> +                    mac->get_link_status = false;
>
> +
>
> +             goto out;
>
> +      }
>
>       /* if the read failed it could just be a mailbox collision, best wait
>
>        * until we are called again and don't report an error
>
>        */
>
> --
>
> 2.4.11

NAK.

This seems completely wrong to me. I am pretty sure it will result in
false link up messages and result in the VF reporting Tx hangs under
several possible circumstances.

The only thing that should trigger a link status check request is
ether resetting the interface, or if a mailbox message comes in. In
either case we should be reading the mailbox anyway since we have to
wait for the PF to say it is okay for us to proceed.

I think a better fix would be to look at removing the lines that are
setting get_link_status and calling check link from
ixgbevf_get_link_ksettings if that is the issue. It doesn't make any
sense to be calling down into the PF to get the status in that case.
It should already be stored in the adapter struct in adapter->link_up
and adapter->link_speed.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
