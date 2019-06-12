Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 348DF42C35
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2019 18:28:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 841D287781;
	Wed, 12 Jun 2019 16:28:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3NXuizKRSMOp; Wed, 12 Jun 2019 16:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C0F287773;
	Wed, 12 Jun 2019 16:28:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A01BC1BF332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 15:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BDB386CD7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 15:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRP1-brfg+RO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2019 15:39:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB98686A10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 15:39:28 +0000 (UTC)
Received: from mail-wm1-f71.google.com ([209.85.128.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <guilherme.piccoli@canonical.com>)
 id 1hb5LS-00021B-Uv
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jun 2019 15:39:26 +0000
Received: by mail-wm1-f71.google.com with SMTP id y80so1250128wmc.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2019 08:39:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=urVDK5+NqoxXnZYKgu707Gh3fN/APXsiXAfcxop7FzU=;
 b=ujctNKftlt+lKGJLwIdJ0dPKmadjLHQXEWmy3fCrFyzaUD5HDNqoQsBrTuY3rYDl0a
 f0Byv3g/+aLRSVwhDZiA3eodcnv5Qq8l0RwnS+Z8nMj3lnoazQtQlWtlZb677MWTCh9H
 bv3QGoN90qBd6xwTpSTN4vhX/OxrBIan5sqayyNuIL//HzAIOGo1xIkEq/J4ep8bR5BM
 UCA4UiNrUoenis3MmqzSZcyz+jrjM+5/l3Wgj+4pdmGx6U7yxWKWNTLXyQ4OQBsrv+t+
 ChJPzQtxgpD0Wu+OemymvyoV7h/itA4SdMWN648UYlLFLMitysfKWOSOrjeXPfBCo9z6
 Xycw==
X-Gm-Message-State: APjAAAXfNsS4Ugpn4j67vs8i9RyRtjXJRX4ihR7FaXesCpdRrUW8ZqoR
 Mm7dXjQkxtFDFXp63pIjJZYhvgGd7R1ZMgakOy2bfkzm4mwswU3f0GrtBN3W9odFmrPMT2mdAIr
 HPT5MJhhRPCAyBt87qA96nygc9yAlh9ecZPrR7bZHd26O8naddmDweXBXf2+o9a4=
X-Received: by 2002:adf:ed0a:: with SMTP id a10mr7362050wro.166.1560353966736; 
 Wed, 12 Jun 2019 08:39:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVI76paRy7/ttHPInIEGVQG7uPWsoP1jSbN6ofF9DCTXSxsJucGXsvm3hkdsk9cKjy0PfqwoQWrDuurTQlu+g=
X-Received: by 2002:adf:ed0a:: with SMTP id a10mr7362031wro.166.1560353966509; 
 Wed, 12 Jun 2019 08:39:26 -0700 (PDT)
MIME-Version: 1.0
References: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
In-Reply-To: <B6CB929FEBC10D4FAC4BCA7EF2298E259DD2F265@FMSMSX110.amr.corp.intel.com>
From: Guilherme Piccoli <gpiccoli@canonical.com>
Date: Wed, 12 Jun 2019 12:38:49 -0300
Message-ID: <CAHD1Q_zp_F0CMp-Z72R774-tPm3Vs+96m5DvKtmZbCTz6wAVjA@mail.gmail.com>
To: "Wang, Liang-min" <liang-min.wang@intel.com>
X-Mailman-Approved-At: Wed, 12 Jun 2019 16:28:28 +0000
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CCing Jay Vosburgh

Also, I cannot see the patch in the Intel Wired-Lan mailing-list; not
sure if you're subscribed there Larry,
perhaps the email needs moderation, I don't know.

Thanks,


Guilherme

On Tue, Jun 11, 2019 at 9:55 PM Wang, Liang-min
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
>
>
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
