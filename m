Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 678723FCB63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 18:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 046CF82457;
	Tue, 31 Aug 2021 16:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0ChIh3YQjJS; Tue, 31 Aug 2021 16:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA47882404;
	Tue, 31 Aug 2021 16:19:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B2A11BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 16:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5539F823C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 16:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhMTxXKIhbPW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 16:19:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4EEF82404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 16:19:31 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id x4so17290452pgh.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 09:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wKtFFLPlbriGAMxk9vE8E7Hel3Bz+VZdqkGX4LaIKZo=;
 b=DJjxlImbK5bY/hBlQZOfAxHgMznwgb498a5fU4vuIGNEVAoV89x/jypVLZ0THwg8xL
 pkv4K2CNqqa9Nvudz3NR2M0gANhyx9+BHXuyoudKugzeXhojuMJHnFY/PIy4h5Rc4a35
 myjZxH+KP7c+QxhoO4xOlHFwz4HaIU9WxRi42AKeh0KD7QYZmEAtgLoihVYI6SKC2eIF
 qbA6iKbBKWfs65Q2juWBpB5nS6Dyw0hZeeGQkMs+e/8XeHK30WTu55oHkdXMf/0A4HK6
 99eGjSLcwzmVi+38oBqOHwxgAhc4tHsgGTZXNU8orRtAWnDT/N9u0UAS4aoPEhfswSH6
 68pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wKtFFLPlbriGAMxk9vE8E7Hel3Bz+VZdqkGX4LaIKZo=;
 b=Yjyjly996L9USux2po5q88W+d2Imz/MiKpfpCP7JSUuO/CAlxp/yd144BJpAlJNfNw
 X+a420YTwE3JR7BySQQtP14f7QcMLPTrqzFdggoL25VkPmHLjLJWx9lLTzs+A83X4zUo
 7DB6tRo4SfLkvwrgZedG8xW1sskktoVCxgwoCogWvtxyC0gkXlLFnpE/grPCkWS/oOeb
 dFLW2Jxuxp+25ueQeYCvrDsQ8NlGZBUlI8UBt02NraRPj+prYUw2crbCTdFAQKubatW1
 KF1FXBTZ7SP9V6QYfnl1LShSMBWLaEyuf2YZ0NGOWSGX46j4PPwrbGx8gzJYCZFLvLJh
 wYvA==
X-Gm-Message-State: AOAM530Q1uFh2sXicRqWnN70UaIZXH4SWqQx1YHJ6GhwV9v7u0ChmXmO
 3JwulkpWDCnQAxjE15UZ1fs=
X-Google-Smtp-Source: ABdhPJzBpDuzBDRFHhJzk6xqE+MOP5/gu24LM6f1luLCTnLqOi9XIxRbrbuGV5N9lU4MCo7M1Pnu0A==
X-Received: by 2002:a62:8415:0:b0:407:8998:7c84 with SMTP id
 k21-20020a628415000000b0040789987c84mr673075pfd.71.1630426771124; 
 Tue, 31 Aug 2021 09:19:31 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id n24sm20904404pgv.60.2021.08.31.09.19.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 09:19:30 -0700 (PDT)
Date: Tue, 31 Aug 2021 09:19:27 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210831161927.GA10747@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: bsd@fb.com, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 30, 2021 at 04:29:09PM -0700, Jakub Kicinski wrote:
> Hmm, IDK if this really belongs in RTNL. The OCP time card that
> Jonathan works on also wants to report signal lock, and it locks
> to GNSS. It doesn't have any networking functionality whatsoever.
> 
> Can we add a genetlink family for clock info/configuration? From 
> what I understood discussing this with Jonathan it sounded like most
> clocks today have a vendor-specific character device for configuration
> and reading status.
> 
> I'm happy to write the plumbing if this seems like an okay idea 
> but too much work for anyone to commit.

This sounds nice.

As you said later on in this thread, any API we merge now will have to
last.  That is why I'm being so picky here.  We want new APIs to cover
current HW _and_ be reasonable for the future.

I don't see a DPLL as either a PTP Hardware Clock or a Network
Device.  It is a PLL.

The kernel can and should have a way to represent the relationship
between these three different kind of IP block.  We already have a
way to get from PHC to netdev interface.

I understand that Maciej and team want to get support for their card
ASAP.  However, proper kernel/user API takes time.  For example, the
PHC stuff took one year and fourteen revisions.  But it was worth the
wait, because the API has help up pretty well all these years since
the v3.0 kernel.

There is no need to quickly merge some poorly designed interfaces.

Thanks,
Richard

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
