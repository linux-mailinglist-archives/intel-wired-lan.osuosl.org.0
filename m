Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0442B7255C0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 09:35:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B8574194D;
	Wed,  7 Jun 2023 07:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B8574194D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686123300;
	bh=cdLIzlv3wspwnl+8FJBhqYUNNfew6KjUywQIhktUtEw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P13iJePuPOCD203lSoXZiTtZTLCHhoy04V2R+YNqk4DSvEcuUPvhCbmXZxKDcRV8i
	 AAWGj5GmT1bQ8d5j0kx+2efrs2NyTQ/i298RfN+cYz0gnOGTEkzqUWZDbeQz9ByCb2
	 0jJA51MRdrji6sa7HedLqkJwrymVrh0ZEGTlIoB2rII7ilkUrCcSYPcZnpAz4ViNQs
	 UuIykyY2ef5BLQdy4DYrNfis12VH4HoPWLERYpBKTBEaWKLqL0A3dXTI96RYtaSoXo
	 v5Bbs3th6BqX755hZlaTsmPSe+jbfZ7x2AYrl8oRj+L6RM41ek2+iZMMmM5b+rR+JL
	 TMq1c2IX8j5HQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezC--_-FqRV5; Wed,  7 Jun 2023 07:34:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27D2E4159F;
	Wed,  7 Jun 2023 07:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27D2E4159F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E66E31BF31F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C804C403BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C804C403BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bO5yY-hU87YY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 07:34:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5FC640332
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2101.outbound.protection.outlook.com [40.107.100.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5FC640332
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 07:34:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghtdgL/+NHl7//lHiFt8eekFrPJmoAHJm6Fb8bi6T8hKlsXXGQSOHVQ7drHHHqn+y64cfctHnloxGrieV4ivJK4/sJYE1fnGdihETwTGSTd+Kmn0UcQrlEJft4KJYvjT4bisdhYxJ41yDr6VqWY3UXWdp4Lo9pTeyKWmyRyJgceLaN/YquAYdOHaQJNQ0oYqc45Kg/mXvvLJuRssLEbjhDuWj4lvpJ+3QR1phlMNEaIEiWpbr+m8f7uIjKb3Dm23wGvBRlLgixrrvq/HPrD1qfcFDampZFi6ZP+lPbboSCrRDbUSzmzBCFfuPzWeKTzFJRGPddE930VdzIgKXWGE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DfBHi+ePb6iUNqdqlAC8bAWNI5MhQcAqr7amRNA+L9U=;
 b=MyzC3Iv4zlcX87UIcAcGW5gpzKR2v7Zgpin/AlVAOD/T9e565PbIch1c1eAGLbTdoTyk0nO94T3ZP7V/LvK/RqYYhZhL1MUQnj6BZeZyOiz/9b09vKxWPJYnqa8R+srOId+f1kb7/WrJN9W6KVpQKSzPSqIi1NbyCP3OU83MqzWW7AMsHDXNx/jYK5qn/3GVb8C/k1XFqtxsEjcMIYXCS3GpOJgHUPrt1DpkFYsF+0IG5Xo5578xYswb7BOPcPuXaqLNvY0YcATw/Ts/zebS43XmZyJj8a1jnOUCnavDdxafW1AbX3/fP+QykLvjZ3fG+wulvwbSpCtbBrjp9lRfkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB6219.namprd13.prod.outlook.com (2603:10b6:510:248::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.31; Wed, 7 Jun
 2023 07:34:48 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 07:34:48 +0000
Date: Wed, 7 Jun 2023 09:34:42 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZIAzEh1Y++os19fl@corigine.com>
References: <20230606111149.33890-1-przemyslaw.kitszel@intel.com>
 <ZH9S6wPIg9os8HYa@corigine.com>
 <1e11a484-af99-4595-dc1f-80beb23aae9f@intel.com>
 <ZH9hS9BBDhy9lIG1@corigine.com>
 <9b5c6653-3319-3516-0b50-67668dcc88f3@intel.com>
Content-Disposition: inline
In-Reply-To: <9b5c6653-3319-3516-0b50-67668dcc88f3@intel.com>
X-ClientProxiedBy: AM8P190CA0018.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::23) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB6219:EE_
X-MS-Office365-Filtering-Correlation-Id: f4307ccf-a741-4ab9-2c61-08db6729ac02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c2U7SrRaXgQcKId+uHlrTD/XqDefimFbrszWDMl9NeZsOllhGs1JHWW8xaKtZtJxEq5keD1LDIcN1/S9ykVeE7YvrCmhg4Da0+Sxu6dJ1wKZd+LYlWKF5fYvQ2EyngLAdbzob6kDBuFHhA1sYDFK4QCLrau1x3Nhdp+8wkdhlNzQZxywrK29bMZyI6GK0iK/CE+tXiUEITYDyTDW1+AuUphqsywdBxTc/z2Iy4dXShuu+6y420lbau9PauY7WE82e+cdMkuGQ16v8C/03BgCvTuZp29XHE0JJyI99eMhNlJL5uSCjwTh85sS3gE9jk8X0TsTWwBhQLMl0vQeZ/gpci5/5iZd1Udoylza6thmnO6AQz1/N+h9f6CaE9zh7d1Aro1VHgxIS1Wb8piHq3LyeQQ4UJDpMJslLLWOnhdG7L+GJpVD3HpzoHqpseBelpktantM9ID95zq8kd7LkBI7Xm5ON1kvFW3HwfL1Aok/ZcBkvLWSpsepAb96NiPqW0bTGhNcT/3QhRsJD1YpjiAWTc/E/CNOCGBsih11i+aO+efcazkQ/ty08FivDnWo2x/m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(136003)(376002)(346002)(366004)(396003)(451199021)(6512007)(478600001)(36756003)(6486002)(53546011)(2616005)(6506007)(186003)(6666004)(316002)(41300700001)(66946007)(66556008)(66476007)(44832011)(86362001)(6916009)(4326008)(2906002)(5660300002)(8936002)(8676002)(54906003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LWaflkUYOoJiTPB3uY8ABeWeR7MsgHf/mlYXE+uAWHiM/LRErqxMgtiw13pL?=
 =?us-ascii?Q?u4zc3bRsc029Onz+AJFtr4LoaSKG7vGb4VKI3NRPosmc9Cw9OESpvvfa+Bwt?=
 =?us-ascii?Q?5Qk2HPAK7mN0ZgdpCLZFDzoDUNx4OC8FBuLuShOete+IH1Tw+etIkGkTtjoJ?=
 =?us-ascii?Q?kWzaa9QY0ZDc6dE43Jg54VcI5uUWU5dC+u4u01DnGDqjwj2/IO8NLWKoDpud?=
 =?us-ascii?Q?a6aXMFE9tpRStTfRe1pT7PYKkg/8rVT3Xao6DlvB0W9ffwETqnEX7rPVIlQ+?=
 =?us-ascii?Q?Dr6xIZLwavsIytY+4UbdUmn9j0DMwmSr8xplsL4Ruqy2Jfr8D1TwXlVStFti?=
 =?us-ascii?Q?dPtBnORzM+EYI6jAdQzdrIBwvDXWlbeKe1Zr1zuQKVg55JtqcKurdYSBVS/r?=
 =?us-ascii?Q?z8pzklONPmr3P+GThZz4qmQz7QghrIwTmArVjsIRsZtOKOADUbiiQ7hzuelR?=
 =?us-ascii?Q?vjZ5MeMpu/RMWWOoSoewxxvKQpj3ul1OpymeSpPdgkG2IW/CiiIUzS+AjGBY?=
 =?us-ascii?Q?+asnB8RDOe1Ij0onDQhewVACRUrgBaEInS1iQB/uJ7DL7Xd9B7oJsX9Ar9Ao?=
 =?us-ascii?Q?3lmpaAXb9nwRQEALbbUbJAgVKBXjYnjgz/+uC7s1JtLJeo9vuDtH5wRRuNI0?=
 =?us-ascii?Q?1ic18pTG2rkFCGUq4MvjdshZG3dUnfqCRRULTcaFh6nhUUClPygKWrFx/jCS?=
 =?us-ascii?Q?4WUsR0cqgdNht/cCGalMOgpmOY8/EGL63yfOMKSUC602dbZzBz7zw+TiXNhJ?=
 =?us-ascii?Q?QDPS1paBW8iSPyqVq9oh7Yloa5SDJN1Kb1FQJah9YsvCBPFSIRCttnOEQHCV?=
 =?us-ascii?Q?r2NsjXjhwFlOkjQowrP6hhUSab9Cm7SAbbZZur+D+gZPofFYkSjK2Dcs9W4I?=
 =?us-ascii?Q?ccnrt6C5HNTD9BrK4ZXw3wzo1jkuGBWP3tT11z1CfzGMNogCK7+oPeBjDnzm?=
 =?us-ascii?Q?aWVhoiY5IifibJFD65U1kZ56qCNQplzJPQJJtI41QwQDJa/0En4OeqL0mtwh?=
 =?us-ascii?Q?fRFjveHApBfO2hGPOA7wo26Pej3UI4Hhic7ST7ejqCeycQU4DPZYWxmxrCqh?=
 =?us-ascii?Q?bClTG1wx+EeY0Uy7i/o9XvLI5T9op1liHDSl97LFLPdwo7qB/0D23sJhWnJr?=
 =?us-ascii?Q?8ftb3s9B6XLPH0JFOedP8SkZZ93eBXbdK8RHKqGHL+ZhREVpLe5Al+JZZ6XI?=
 =?us-ascii?Q?NAbyIt46oEW+XUQfvggmylfHSgh1k6/J3sp4o3k9SYei7rSPUlf2eCsrshcS?=
 =?us-ascii?Q?4W0tmu8P9vlZpqEEY/NhNL+yV2+pJagqOvyytFANJdI9ivrAYudmQgqYkJoP?=
 =?us-ascii?Q?mQTSZWumEM9k/1UlXJFHKD62zji/ygaROdDPoJRDBySIsX+x14vmZm/nT7U2?=
 =?us-ascii?Q?nAZbLNfPQVFhR9HjspOdVn7OyCk84ChEu1Y7AOVFAyFd8wUvf2Ew+LVv9nQw?=
 =?us-ascii?Q?k12vqi8UyezvCXAThYFPR9/dOV+ZfTy8ifwsSXQDp3jGZ1GWdGHUlDvEVx2M?=
 =?us-ascii?Q?kESpYs/xgXMWMAShSJ8TiqAeL4+7LNsHmEYk+8V2Vi7vunInl4SA1/gIYP9r?=
 =?us-ascii?Q?ENrq8pCKXV3ReE3hIuJ8Njec4yIyPSYpGhPL8YjPjv8eCE/Cxvqlt2HR0I7o?=
 =?us-ascii?Q?kAqSnBeFsIzB4GJeJgdCE+JxZBupFHXamEjrqZH4fVbM5dLwYiHRFqRaq32g?=
 =?us-ascii?Q?5vbDgQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4307ccf-a741-4ab9-2c61-08db6729ac02
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 07:34:48.2673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fRV5hKZMOzUWQp0mKjjdcoqZKuFUGFyD+W4zx2PqbPFI6fmu6+Xyw7iZS5q961LD/U4kfstgRDQ9HYli6UqjHjb4IObNz4jNhmv0fyA991Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB6219
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfBHi+ePb6iUNqdqlAC8bAWNI5MhQcAqr7amRNA+L9U=;
 b=J+Z5RqZCjvgJ3cGoPeFPk5f4nnjyEL6JLOkrlDzeMLiaB5lnTp4I5vw3nf7vfSM9wInhubLK3Tg0EigPqzM5n5sOiZT0oF7IyUGhSKk+rL4HDLqJnV/Mb8CwOk+Ce/fJsQR/SqkJNLkY4GlYox0H9i4df2hwhWAsqpXrLAosrqo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=J+Z5RqZC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 06, 2023 at 11:14:44PM +0200, Przemek Kitszel wrote:
> On 6/6/23 18:39, Simon Horman wrote:
> > On Tue, Jun 06, 2023 at 05:42:53PM +0200, Alexander Lobakin wrote:
> > > From: Simon Horman <simon.horman@corigine.com>
> > > Date: Tue, 6 Jun 2023 17:38:19 +0200
> > > 
> > > > On Tue, Jun 06, 2023 at 01:11:49PM +0200, Przemek Kitszel wrote:
> > > > 
> > > > ...
> > > > 
> > > > > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> > > > > index 6acb40f3c202..af4c8ddcafb0 100644
> > > > > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > > > > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > > > > @@ -3869,6 +3869,30 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
> > > > >   	return status;
> > > > >   }
> > > > > +static enum ice_lut_size ice_lut_type_to_size(enum ice_lut_type type)
> > > > > +{
> > > > > +	switch (type) {
> > > > > +	case ICE_LUT_VSI:
> > > > > +		return ICE_LUT_VSI_SIZE;
> > > > > +	case ICE_LUT_GLOBAL:
> > > > > +		return ICE_LUT_GLOBAL_SIZE;
> > > > > +	case ICE_LUT_PF:
> > > > > +		return ICE_LUT_PF_SIZE;
> > > > > +	}
> > > > 
> > > > Hi Przemek,
> > > > 
> > > > I see where you are going here, but gcc-12 W=1 wants a return here.
> > > 
> > > So that it can't see that every enumeration entry is handled here? O_o
> > 
> > Yes, that seems to be the case :(
> 
> it's the same on gcc-13 on default (make M=...) settings, I think, I will
> post next version that is passing that build, even if to make integration
> with new gcc easier

Thanks. TBH it does seem a bit silly to me.
But GCC builds failing does seem to be a problem that warrants being addressed.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
