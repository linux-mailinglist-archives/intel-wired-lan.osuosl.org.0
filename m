Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0027047E89A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Dec 2021 21:03:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4E8F8330B;
	Thu, 23 Dec 2021 20:03:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ae4Zun9DYvOs; Thu, 23 Dec 2021 20:03:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 95B4D830A7;
	Thu, 23 Dec 2021 20:03:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9C01BF46D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 20:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65BB683112
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 20:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nmi7pqa7E_an for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Dec 2021 20:03:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0449830A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 20:03:23 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 x1-20020a17090a2b0100b001b103e48cfaso6874887pjc.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 12:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gcq6QhZOGjt2BvPoa5butYmz3+sYb4kzZ7U5c4e3NkA=;
 b=L0IIe8mjv8kvVSzF7NgDX7G/KmpyRCXVKM7g9a8dFsxbcjh6e2WP/GCZCQf15n+WdI
 15h2VHnWH3R7ggpGOrM1fxzdSe0tYhDOYGxH+lyQQ/nLRboZ6oEqh6fwlkBa/OLr9vou
 eHGHLSBgFf+cAGBKbzz5KOwdnJQ2B9eZZsjIabkUGkv3rDwIOfOwidn7mCGZgRRe/O0/
 3sUZwOJFB7Vovin5tkdybhg147kBtOwf4gE0a/40Fnu+BbLBRkVJ0GSL8pf2BPYyqN90
 pkVT+Oo45mviwqHQ2FPleAfpAu8Kdj1psUFDC76nHKZmeRIe61YexjtS7nVdwc7T+7ux
 l0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gcq6QhZOGjt2BvPoa5butYmz3+sYb4kzZ7U5c4e3NkA=;
 b=lebT7jAcVk9Muu2ML6xarsJXTb4yQdavtq2PRiF0zcb2Xaw0lqLW/DEY14KfD6mCGv
 iNd+IDait06MokKCjPWviOWlPMfQhn0o59+3b5jMH+etH/OztWy1gPiS8HqFTcOdUWU3
 gn5Xi3OPn4m+2wkQYu1w10x5fYbCrzLr6lyjxuc8mB0GIB3XARQsM+x+JjY9JDiiS/Fg
 f0O4vcRmDGY/iCsVrl4y9vXtBaZ/PWiYP1RI3JeJdEmDVWtj1+giLyxw7yBgSU1CAOB1
 DBI75pdKQhxOX/Ut6pQQrYwHjibbv+NmgM7L5zTT8e+c11WssjSvnrj33qOo4EaWQVNs
 cOuw==
X-Gm-Message-State: AOAM533adgLJ9k0QS7Jnu41jXD8N94Fchv08NND52U15jIREB5y29gFq
 PtELq0T+BhYXrln3ka0GJeM=
X-Google-Smtp-Source: ABdhPJxVMIe2MZt6v9it0MTX1wnua9DmtrAViKcXRPsJmht14ji7licaP5YYdGPX0CQ8Ctbb9Rhn/g==
X-Received: by 2002:a17:90b:3810:: with SMTP id
 mq16mr4490485pjb.190.1640289803385; 
 Thu, 23 Dec 2021 12:03:23 -0800 (PST)
Received: from hoboy.vegasvil.org ([2601:640:8200:33:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id c2sm7099410pfl.200.2021.12.23.12.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Dec 2021 12:03:22 -0800 (PST)
Date: Thu, 23 Dec 2021 12:03:20 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Ruud Bos <kernel.hbk@gmail.com>
Message-ID: <20211223200320.GA29492@hoboy.vegasvil.org>
References: <20211028143459.903439-1-kernel.hbk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211028143459.903439-1-kernel.hbk@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/4] igb: support PEROUT
 and EXTTS PTP pin functions on 82580/i354/i350
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 28, 2021 at 04:34:55PM +0200, Ruud Bos wrote:

> The added EXTTS function has not been tested. However, looking at the data
> sheets, the layout of the registers involved match the i210 exactly except
> for the time registers mentioned before. Hence the almost identical
> implementation.
> 
> v2:
>  - fix PEROUT on SDP2/SDP3
>  - rename incorrectly named sdp function argument to tsintr_tt
>  - fix white space issue
> 
> Ruud Bos (4):
>   igb: move SDP config initialization to separate function
>   igb: move PEROUT and EXTTS isr logic to separate functions
>   igb: support PEROUT on 82580/i354/i350
>   igb: support EXTTS on 82580/i354/i350

For the series:

Acked-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
