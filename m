Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD31B30E081
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Feb 2021 18:08:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E9CE860F6;
	Wed,  3 Feb 2021 17:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LIx7hjzdjqo; Wed,  3 Feb 2021 17:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05BB6860F8;
	Wed,  3 Feb 2021 17:08:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FDE81BF575
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:08:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9ABB7860E0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZVcMuhaswGQ4 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Feb 2021 17:08:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38CFF860CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Feb 2021 17:08:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75C7E64F5D;
 Wed,  3 Feb 2021 17:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612372123;
 bh=GHbsnFhDAKV1JIiAdMod6/T28Z7gJtGSNqvDXFUzp7Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aVWpfjyC0WbnXrg0oh2eYgYd568vaRIiw2RtW9hThCc4TrvkZ7jQlmZ+CYzk05Cnt
 iMzXpE596nT2mn/eKfK8lk3CM+X6F+VDwD3PB2NKrlPFgGlyMQLdbBPdbrXEXuh6/w
 +/MtdzqzD2fjGBxiJ40sZjBAeI3MEbVu1do5wusFdXjXQtsFmdZ0TPEPkUZcOqTxgY
 HoGrr3mjNB5NS2jfQhW+RTPU29ukyve6byturb1sfuLAFYGMGj3HfbNRMwFZas6SNE
 2qoZcdbOu/MBheyTMs3mtZq7WD8uaIE7uW8X3350Q9MpbeeziMZHTith3pLGdFchND
 mj8nPxnQBYVIw==
Date: Wed, 3 Feb 2021 09:08:42 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Pierre Cheynier <p.cheynier@criteo.com>, "Sokolowski, Jan"
 <jan.sokolowski@intel.com>
Message-ID: <20210203090842.22e5ccb4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <DB8PR04MB6460398CFCE47ADD5EE773E1EAB49@DB8PR04MB6460.eurprd04.prod.outlook.com>
References: <DB8PR04MB6460F61AE67E17CC9189D067EAB99@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210129192750.7b2d8b25@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DB8PR04MB6460DD3585CE95CB77A2B650EAB59@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <20210202083035.3d54f97c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <DM5PR11MB1705DDAEC74CA8918438EBA599B49@DM5PR11MB1705.namprd11.prod.outlook.com>
 <DB8PR04MB646092D87F51C2ACD180841EEAB49@DB8PR04MB6460.eurprd04.prod.outlook.com>
 <DB8PR04MB6460398CFCE47ADD5EE773E1EAB49@DB8PR04MB6460.eurprd04.prod.outlook.com>
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 3 Feb 2021 16:05:40 +0000 Pierre Cheynier wrote:
> On Wed, 3 Feb 2021 16:25:12 +0100 Pierre Cheynier wrote:
> > On Wed, 3 Feb 2021 15:23:54 +0100 Sokolowski, Jan wrote:
> >   
> > > It has been mentioned that the error only appeared recently, after upgrade to 5.10.X. What's the last known working configuration it was tested on? A bisection could help us investigate.  
> > 
> > I unfortunately moved from one LTS to another, meaning I was in 5.4 before, and this UDP tunnel offloading feature landed in 5.9 as far as I know.
> > 
> > Maybe Jakub can give pointers to specific 5.9 or 5.10 kernel versions I can eventually try, so that I can help refine where this was introduced (or if it was present from the start)?  
> 
> So I think I was incorrect, the support of this infrastructure for i40e appears in 5.10.
> From what I'm seeing, and Jakub will confirm, I think this started with the
> initial implementation for i40e (see 40a98cb6f01f013b8ab0ce7b28f705423ee16836).

Yup! I'm pretty sure it's my conversion. The full commit quote upstream:

40a98cb6f01f ("i40e: convert to new udp_tunnel infrastructure")

It should trigger if you have vxlan module loaded (or built in) 
and then reload or re-probe i40e.

Let us know if you can't repro it should pop up pretty reliably.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
