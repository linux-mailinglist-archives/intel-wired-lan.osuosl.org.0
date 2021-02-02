Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6A530C5B5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 17:30:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33E502226B;
	Tue,  2 Feb 2021 16:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XXmx6DLf9YBS; Tue,  2 Feb 2021 16:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F99B21537;
	Tue,  2 Feb 2021 16:30:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83D571BF35F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:30:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F96C85C06
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:30:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgDBagewb0CN for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 16:30:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 307EF85C05
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 16:30:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6F1EB64F76;
 Tue,  2 Feb 2021 16:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612283436;
 bh=EOFLd7vbQ+FnaMhBVXwbgYDWvwXBhfJGeCLSW6NeLIM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pnig1wqYRjDib4fWzLrwXEQeHfIIMTtSybvfOO7ePAPNj2K9GxRinvj5uTyQDKIbg
 vGpAnDP6ap+SRjfplJBC6HO0AmoOtbtYEa+y58oweD8Ym/AOlWGgcX7WTx9H5JIvE8
 /EdyDxz+9Hk6oilFG2XZ/uXyW+Z7WbzYu54hSfnJqdfmLw3beZMYEbxWey0NHDCXv1
 MDI8nud91izBjUPZxstzYNxP6LS08AMav7VLdog8xEUZoS2xxcee4W2kDaMkJDJtLl
 hBtzXo5DWjCBYVatxU5N35MwZ/h0SfiH/wcUX7WVfJ7vibUKudeFTXNSuhWA0WVt2f
 XDnmZRE1Kz0xw==
Date: Tue, 2 Feb 2021 08:30:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Pierre Cheynier <p.cheynier@criteo.com>
Message-ID: <20210202083035.3d54f97c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <DB8PR04MB6460DD3585CE95CB77A2B650EAB59@DB8PR04MB6460.eurprd04.prod.outlook.com>
References: <DB8PR04MB6460F61AE67E17CC9189D067EAB99@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210129192750.7b2d8b25@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DB8PR04MB6460DD3585CE95CB77A2B650EAB59@DB8PR04MB6460.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [5.10] i40e/udp_tunnel: RTNL: assertion
 failed at net/ipv4/udp_tunnel_nic.c
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2 Feb 2021 09:59:56 +0000 Pierre Cheynier wrote:
> On Sat, 30 Jan 2021 04:27:00 +0100 Jakub Kicinski wrote:
> 
> > I must have missed that i40e_setup_pf_switch() is called from the probe
> > path.  
> 
> Do you want me to apply these patches, rebuild and tell you what's the
> outcome?

I was hoping someone from Intel would step in and help.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
