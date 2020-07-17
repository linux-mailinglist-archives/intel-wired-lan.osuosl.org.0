Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 510DB22310D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 04:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E039A8628E;
	Fri, 17 Jul 2020 02:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pyj7zlcYL388; Fri, 17 Jul 2020 02:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0ADBC86B28;
	Fri, 17 Jul 2020 02:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 569591BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 02:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 595EE855FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 02:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pH4GgkzcMdR9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 02:12:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95BA2855F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 02:12:38 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id g13so6565190qtv.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 19:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2to7PZ35DmNzJzcrbrv1v/mw1Q6DUkd154VCyr9iHYM=;
 b=Z4QPo/np7cP3M1LqYu5EjVw0oGllxD1s2t1KkJVuTCJmjURgb5cyz7yy1NvEhOURrJ
 9naR0/w2uRgXGnOo8iLGmMc/Sn3ZT1x8giUYE46Q1ibL0fGebeX5c6KQWHGkm7XhTI1A
 AW0z9ZDFWii9yToprB4nv8HkRM/e9kDdoYI6A3AZwW+tyJ6kcXJsO76DqSBJR/7BeuC+
 pjtJjqo1OEohXcmCogMcs8aICiLz37X0KVtUfhCt7FUmYxMc1SpNgSqL0y3KpMLFHK1a
 m5+pLo8gXsKOjPPXxy2euZt5pIVLPtDICiWUCJFta9OYf/ZZqyoszNZlnG52lKUpOFRk
 DbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2to7PZ35DmNzJzcrbrv1v/mw1Q6DUkd154VCyr9iHYM=;
 b=BWk/7aQX9U+EdfQ91o2naLxKpS+7/LSzm52IaKi1pKgYq2gn6YTsTmdsWduShSm6et
 k56tAL0GUCWpwQp4CKV/IDw3opylqaimFZRTFTMMjxW6QuPRdGmi2IQZ1GQBOfXsT5Oq
 WSZTBsX2IbpUgPV4fDgx5Z3WpTMYBjjlVkkwMQbZV9ZW2pRgkO14rYNluEguFQ0Ntx37
 b8qJ0J/+Hlxjb5QFXHm3LwkbmoHpf09SdhUKX+5NGMgzoUBr3l22VqRkPoak99cbPN55
 Gr5cpn+9GNYXmf0KT1V0zQavGaWDZ7AUEsE1xrAh4rKOhjPFCPRW1ABGUhdE9lIMi67l
 zhQw==
X-Gm-Message-State: AOAM532y3taGvGvcbpK6GuP656iZ8pv3SLkLQnAKZyRssGTwGAGEEuuo
 e+Fm9lGxS0NEJGE5axKkepk=
X-Google-Smtp-Source: ABdhPJyL/IPCMF02mbDdmX6L6UIUmDWsfuLL612T41/Tr+CQ6HA3NtNqjsYig6nYlfN8cEZhnO1rvA==
X-Received: by 2002:aed:2f46:: with SMTP id l64mr8237129qtd.1.1594951957365;
 Thu, 16 Jul 2020 19:12:37 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id u20sm10432214qtj.39.2020.07.16.19.12.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 19:12:36 -0700 (PDT)
Date: Thu, 16 Jul 2020 19:12:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
References: <20200716044934.152364-1-natechancellor@gmail.com>
 <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 16, 2020 at 07:29:03PM +0300, Neftin, Sasha wrote:
> On 7/16/2020 07:49, Nathan Chancellor wrote:
> > Clang warns:
> > 
> Hello Nathan,
> Thanks for tracking our code.Please, look at https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/
> - I hope this patch already address this Clang warns - please, let me know.

I have not explicitly tested it but it seems obvious that it will. Let's
go with that.

Cheers,
Nathan

> > drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
> > is used uninitialized whenever 'if' condition is true
> > [-Wsometimes-uninitialized]
> >          if (!mac->get_link_status) {
> >              ^~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
> > occurs here
> >          ret_val = igc_set_ltr_i225(hw, link);
> >                                         ^~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
> > its condition is always false
> >          if (!mac->get_link_status) {
> >          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
> > variable 'link' to silence this warning
> >          bool link;
> >                   ^
> >                    = 0
> > 1 warning generated.
> > 
> > It is not wrong, link is only uninitialized after this through
> > igc_phy_has_link. Presumably, if we skip the majority of this function
> > when get_link_status is false, we should skip calling igc_set_ltr_i225
> > as well. Just directly return 0 in this case, rather than bothering with
> > adding another label or initializing link in the if statement.
> > 
> > Fixes: 707abf069548 ("igc: Add initial LTR support")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1095
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> > index b47e7b0a6398..26e3c56a4a8b 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> > @@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
> >   	 * get_link_status flag is set upon receiving a Link Status
> >   	 * Change or Rx Sequence Error interrupt.
> >   	 */
> > -	if (!mac->get_link_status) {
> > -		ret_val = 0;
> > -		goto out;
> > -	}
> > +	if (!mac->get_link_status)
> > +		return 0;
> >   	/* First we want to see if the MII Status Register reports
> >   	 * link.  If so, then we want to get the current speed/duplex
> > 
> > base-commit: ca0e494af5edb59002665bf12871e94b4163a257
> > 
> Thanks,
> Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
