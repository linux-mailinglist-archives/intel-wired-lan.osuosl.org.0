Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 410C3404370
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 04:09:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA32B406C3;
	Thu,  9 Sep 2021 02:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id okigKuiHdGOi; Thu,  9 Sep 2021 02:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9554400AE;
	Thu,  9 Sep 2021 02:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6086F1BF86D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 02:09:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56732400F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 02:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7pilE6n_mNd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 02:09:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA41A400AE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 02:09:19 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id
 c13-20020a17090a558d00b00198e6497a4fso310503pji.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Sep 2021 19:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WCQL+26ndWehB3HytgD9RHZNJoTuFQiOzRw3KyTzECs=;
 b=K0jOqmzn+w4bLA4mSd8wBAITdn3nf21/87iTnEEsX54ypDt//ifRuYxWGPXARFQec5
 24JveKsWTZiOzcHy/irXh19NwjFJ0v4ZLV7pSRVZ/wV5kg75E7Abyk7Kll8fTOkBPnJb
 VKxnAsoC3foqFM+J2ljWP+CHQfv1QvYArmD4jZeJkQ+V22hXDpysF8h7DWARqetPrtml
 d/qx6sUaxhd8PWt+sue1AsrWgHclUbIR51rRElpymavJg3XgSNwPBwWsoOACKEv6oNSB
 ROyM7tbun0myWyOSIB8WR1YRyYomdkPjC7rTsr3WzZpvHYwaQTcYER2tCZnllP6MV73a
 mk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WCQL+26ndWehB3HytgD9RHZNJoTuFQiOzRw3KyTzECs=;
 b=AXpg/RWbyD3b3LGbDzl/MMceVrsLv+kpcvlVqqySBzT+28dEZs3cNxifSh/Ufqj6av
 NvIlwaLmbL6zf3BfkRUe0BZBjbrrKqAHkHDH3zdpepRzP1W3v8ShwnmLLUA0uKYAZwnQ
 dhMmTQ6oSDpbPw94RrmpItcg4EadIDexkRzzTKbSvE8p6tg6zLPxl9PYbnVU3mpBpjuG
 Q8wXcbu0sSGI9klGiSv3C+QMAPkiGt0V+4iSOegkisNrX6Kk8LdAA3bEn6nkd0WfdB4c
 +oGVbMtqKzlt182qAo66LGTVIzp0VTkFJ0cwPogtxqPV2wVlzxxadTh2Lbxa+d8djAYH
 Rzpw==
X-Gm-Message-State: AOAM533skzW58OF6OufxpcUbP08rgI7C1FMEfRvX3PWPla7aelk7qgg5
 2hPE2mdvhAHmBW1RR4IlYvY=
X-Google-Smtp-Source: ABdhPJxl68lYuI77ex5AJLVsBvo8R8x4GXECVWZkFVi4DnztYmI5D930KIbiq700Gxuia2LGPMSIog==
X-Received: by 2002:a17:902:ec90:b0:13a:34f9:cfe9 with SMTP id
 x16-20020a170902ec9000b0013a34f9cfe9mr669621plg.74.1631153359116; 
 Wed, 08 Sep 2021 19:09:19 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id p30sm174357pfh.116.2021.09.08.19.09.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 19:09:18 -0700 (PDT)
Date: Wed, 8 Sep 2021 19:09:15 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20210909020915.GA30747@hoboy.vegasvil.org>
References: <PH0PR11MB495152B03F32A5A17EDB2F6CEAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907075509.0b3cb353@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB49512C265E090FC8741D8510EAD39@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210907124730.33852895@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB495169997552152891A69B57EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210908092115.191fdc28@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <PH0PR11MB4951AA3C65DD8E7612F5F396EAD49@PH0PR11MB4951.namprd11.prod.outlook.com>
 <YTkQTQM6Is4Hqmxh@lunn.ch>
 <20210908152027.313d7168@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <YTlAT+1wkazy3Uge@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YTlAT+1wkazy3Uge@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] rtnetlink: Add new
 RTM_GETEECSTATE message to get SyncE status
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 "abyagowi@fb.com" <abyagowi@fb.com>, Saeed Mahameed <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>, Ido Schimmel <idosch@idosch.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Michael Chan <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 09, 2021 at 12:59:27AM +0200, Andrew Lunn wrote:
> On Wed, Sep 08, 2021 at 03:20:27PM -0700, Jakub Kicinski wrote:
> > On Wed, 8 Sep 2021 21:34:37 +0200 Andrew Lunn wrote:
> > > Since we are talking about clocks and dividers, and multiplexors,
> > > should all this be using the common clock framework, which already
> > > supports most of this? Do we actually need something new?
> > 
> > Does the common clock framework expose any user space API?
> 
> Ah, good point. No, i don't think it does, apart from debugfs, which
> is not really a user space API, and it contains read only descriptions
> of the clock tree, current status, mux settings, dividers etc.

Wouldn't it make sense to develop some kind of user land API to
manipulate the common clock framework at run time?

Just dreaming...

Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
