Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5FB267610
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 00:43:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E1378791E;
	Fri, 11 Sep 2020 22:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l04emnFpxXfw; Fri, 11 Sep 2020 22:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BDFA87922;
	Fri, 11 Sep 2020 22:43:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B47D1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 429E02E257
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0-x6RLfuDBD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 22:43:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 0BCA22E22C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 22:43:18 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id lo4so15690868ejb.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 15:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZNQmt+qWe5O7Whc9bnO+zubN0KQNBY4WACuOCEZNtkQ=;
 b=NPImKUG4AUEX3R5iNZrWPnnpVxI6ZbMdtrsoQffb6ZwEfh5HEjUkL4TXA3TFk1Pk0V
 /8GSiHsL1t4x0yckwUxI43c22lF8FoX5tVCBOcMvCiFJE50J6xbeKqMvDAxmE2K/5f2Q
 QWrKXqk3d8Gqm/5MoHUbaQgVEKuYWZGEjN8Rs2R/4EgdpPhLgm0JXQbrqp/FVWUYj8Qy
 ux701au4hY1V88B1EvtId30txFU6IlMHXAfe7X6pncdsJ90tA0k2AJhWSaJLeOrR5Px2
 HhDw6bljzGR5j2ufF+uAvRnZlaAEtKOABZ3SDMmb+wR5DPuwSmarCjkYhn4bZ5ivqFe8
 bM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZNQmt+qWe5O7Whc9bnO+zubN0KQNBY4WACuOCEZNtkQ=;
 b=d8osjV/3xoti1JvyL6zFs5PYd7y22bt/bLrNfPdjAoEXk2bTgqMyJJ93KioA0nrCTG
 3lB0HjPROE2/dCy3z+woPgN0YZWfqry0wW23ld5KHawkefdthUSpxVQ10P9FWL3rI+nR
 3CdK3g2bzK9e633tek+fdqc8hwALO5e1YWrWMPzrls/mFbaHycg63bTqePypYm5Nxtoz
 De+WyT5qAj4gi0NhKCXMRMoVa41rUoB4mL+ntNzr6Eakgtsd+WoUSmMqV5Cmh3nT4qCU
 azDUPzOzqV7vFiqKU+hPmaI+XssgLO4ak+l+rTNu7xbihatOGI2h5l8NQ11JsJ1IqFGX
 7qzg==
X-Gm-Message-State: AOAM532fRcO1tyRhi3SyliVM+Ywayq2tN9oqVzHRxA9AN1e094mMuOaX
 ZzuWDYahlHpg6PrexATc5Zc=
X-Google-Smtp-Source: ABdhPJzEjuRP8upj+KrYkRi8qs65lW73sh1bTE/IC8vd81JVAOT1o0zGsDvlMPv5k/io0t/XASK0+Q==
X-Received: by 2002:a17:906:a101:: with SMTP id
 t1mr3987339ejy.203.1599864196358; 
 Fri, 11 Sep 2020 15:43:16 -0700 (PDT)
Received: from skbuf ([188.25.217.212])
 by smtp.gmail.com with ESMTPSA id b6sm2794410eds.46.2020.09.11.15.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Sep 2020 15:43:15 -0700 (PDT)
Date: Sat, 12 Sep 2020 01:43:13 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20200911224313.qxhhcu2jlizxbyvr@skbuf>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911075515.6d81066b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911120005.00000178@intel.com>
 <20200911131238.1069129c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200911143405.00004085@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200911143405.00004085@intel.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 00/11] make
 drivers/net/ethernet W=1 clean
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Sep 11, 2020 at 02:34:05PM -0700, Jesse Brandeburg wrote:
> Here is a list of driver files with sparse warnings from C=1, maybe we
> can encourage some others to help me fix them?

I can take care of drivers/net/ethernet/freescale, thanks for the effort
so far! I'll try to send a patch tomorrow.

-Vladimir
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
