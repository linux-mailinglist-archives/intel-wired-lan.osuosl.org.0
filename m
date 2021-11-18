Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B832455FFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Nov 2021 16:56:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B8A2860E54;
	Thu, 18 Nov 2021 15:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id peE7xKgqrdbt; Thu, 18 Nov 2021 15:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E06B60B7A;
	Thu, 18 Nov 2021 15:56:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04F0A1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 15:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3C3B817FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 15:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gA0dmgaGWMYb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Nov 2021 15:30:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2077.outbound.protection.outlook.com [40.107.220.77])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE5F881819
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Nov 2021 15:30:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=az+HJeAHA2SxKSl6QNsxx3r2Qdy4qsuJhL2zkYYpwbB9OwNL6svlljs5N1rZrTIIZ4YEvHD1RPfRc6x2gzQIpk+h/sJQZKSR3oz/BP58OiesRCxCFjOP921CDxGbz9YQ4AVvLlRCxwIkzMTZQACNIXMYyk7DQNNXZQdMw2mssH2/8e7BQWY6/LJqbR9kF0VM3o2V8aHd1Cvnobz1colhxZ0Cs3ZGMTbfLzXUIllZ0ParYkPbHSvPhEK4QxmNYZhjcO2m5dGaEc6cirFf8b7P5A++9QJ/Cz7LwhhozaR7QsdYpuIASsZcF3sf3llMzqTpK45Tkc8m3jgbQoJTk8g9ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U5kOK8rSFI876WukrcTuu5pVmcd2On3+nFMek5Gwwuc=;
 b=YR8Sf2JELfNgIdY/ZXphGWB28xGPcmUuY0KFSVG9rkY7bFAjszJEzoZGlnEFH6aetN7MwCa2v+Ma/qe42Tv5b3ePElXWgCRv58yFZX261a7greeFTWwa8z5fxFDopOO64/WzJ1U/I8UC5A984fQGCgmilOiHuCD7bOgvQ5E8vA/tpOmJVUdfHbayRfI8GAufbVFQ5SOB3mdhk3tXS0zv4dJ3JfBjJWbh5bnpykFZo/C2zjQWRXPdLX0amQTchAHByfzkhtTUhSWTxNWC2q43HfxU1CZM5BAPk4gBhTmC+l9gu18nGMb8z3Fspu9Bb+MI6JyZBq+cMgeMSjIhAJf78A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5kOK8rSFI876WukrcTuu5pVmcd2On3+nFMek5Gwwuc=;
 b=iB0kyKMsPmYbzWoB4lzgnqXF2HAa89o0b67VOwQDEMzk5gKHSDsDpXCqtDjdR/QSUdc9cqCBF9cM25TQjhlgj55VwUAeOiDQgfHbufaeMsgGDw9poXIleTAyVRLxPJEPugVMDi0voRYmKWvwsepCE9v7wDOyBGj4VuZgqFAZzOAIq8P0gS4TINTaCSc97snOn/CxpHnOTv59MUreeoJexrrs4x7rcljDQY5WHkja+umTPdE8b5mKUfOn+kkVh8+2JWnIE9G5UzMv18Lksj71Mbeiau/jRCs19x5evXPUVrJ/AGouJOmyRk5SDIhercmaC6ZJM+99yGRZN3+Pzhsvdw==
Received: from DM6PR12MB4516.namprd12.prod.outlook.com (2603:10b6:5:2ac::20)
 by DM6PR12MB3082.namprd12.prod.outlook.com (2603:10b6:5:11b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Thu, 18 Nov
 2021 15:30:36 +0000
Received: from DM6PR12MB4516.namprd12.prod.outlook.com
 ([fe80::a5c1:7bee:503f:e0d0]) by DM6PR12MB4516.namprd12.prod.outlook.com
 ([fe80::a5c1:7bee:503f:e0d0%9]) with mapi id 15.20.4713.022; Thu, 18 Nov 2021
 15:30:36 +0000
From: Danielle Ratson <danieller@nvidia.com>
To: "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>
Thread-Topic: [igb] netconsole triggers warning in netpoll_poll_dev
Thread-Index: Adfchsjmgwle+3nASZanfB6Ju1VdOQ==
Date: Thu, 18 Nov 2021 15:30:35 +0000
Message-ID: <DM6PR12MB45165BFF3AB84602238FA595D89B9@DM6PR12MB4516.namprd12.prod.outlook.com>
Accept-Language: he-IL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea3483df-027a-4e02-210c-08d9aaa85e2f
x-ms-traffictypediagnostic: DM6PR12MB3082:
x-microsoft-antispam-prvs: <DM6PR12MB30820452840FCD8A184276BCD89B9@DM6PR12MB3082.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: etmJWdBh5d4zkwHdCj79kbQ0+vOeFym8NyvzMs0+//Qmc4PmNL3Z6H0hhW0ZOm4XLTs5Ix6Wo8fF3/1ah4TUdwALhUAiByk9T3sLYRxCGbp4jzY8EaMRqlcU6N6/loGbZKTvYpIQzxMBz59hTJvcoxWzt4Y4O5PwDQgGYQorzvbrEG0YIn+DowE+13xGjEPwQ5ZA+SpYpEZ1ovRTCAfkNJUb6gyB4L/fuHQ/D5Gd54pZfdaIMIIoeck8sPVGQZ2r7A/8PPI2RZQvt/mjSwGkNVJG519eZaSb7Z0kbM60OYUfVCOrfP6oVqVNd3jRrLViRPEzvjSbE/eta/ios3qov85cjJnjJ3jwcBwtI2WhoS854n4X/895Q4cyVTZB9j/BB6y654iZigsbjmE5TjL3SFhFnzobwwmVi7omHKZFu47kn1Ei+ljURemg2pIivPiAo9FzjUhZcp63wGfg/Mwenad4nI0w9Ne4qVT8OTPfcnwjuw8GT0LFf+PViSynM1kKXiXTqRBZTjOGs6YIPub8tbLLF7WiJlN/ZfX/2jwkKNNihKfBUyXnnKGC79nZksETYNVjzCjOVxR27s3H8tq2bShM6Ny+he2Q8SP0TIam9TkWvMUwfY8jGd8mEXwf64NXZnao2lEdYU6cjkfXY4TGbZ5bOP+9viRKgFItjlOsjJ/PLGc1JWzFccXo3+/PTqvb50HDkBAP9L35ReCXgIpgZ1Btg8A5HaxOVv690QC1zRE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4516.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(86362001)(76116006)(66946007)(38070700005)(83380400001)(2906002)(4326008)(26005)(122000001)(38100700002)(55016002)(33656002)(9686003)(66556008)(64756008)(66446008)(52536014)(71200400001)(66476007)(110136005)(7696005)(54906003)(5660300002)(8676002)(8936002)(316002)(53546011)(6506007)(508600001)(309714004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkxBV3ZoZmo0UzdPbUVvZGVQRHIyTHduSUtCaXNiQitJQU1vUnREclgxRHVx?=
 =?utf-8?B?RlBRTTFsaktVWGppcFdSR3BRZXBsQmJZWXN6R2REdUtTZmJ1WGJ0SndWZ2ox?=
 =?utf-8?B?VjE0MEI5Q29UNi9pY01oUzlDMHlyUkdac3FhN1c1aXhCQkpreEo3a0FpNlBO?=
 =?utf-8?B?dDIvZENzNDU3NXNmdkpxSm9sVTBIY1dVZTVFQ1c1Mk4yb1p2OGhsUFpxQnU4?=
 =?utf-8?B?R09rWlJvTUtaWXp1a2VDTkpZMk1XblJCSy9PdHFFTXdqaGxEUjFRMVNxNFhq?=
 =?utf-8?B?USt3aG8rTzhlWE82WVQyUEszS2psS3RaVDd4dG1LTXJRWlh0MXZrNTViQm5L?=
 =?utf-8?B?NWhXNkpMdEdBeTVyNlFLaC94WFd1TkI0QVNWQ2RQdTlkTkJFTXBJaEM1WU4v?=
 =?utf-8?B?TnVZMmpnTEI3MDY4eHRnZ0liWDQ5ZjdEUU1lTEVRSEZDd2RCeDdZV2cyVUFE?=
 =?utf-8?B?Wm9QajJiOS9wb1AvUFE2bHFpWS9Nc0gzdTk3QzVGcC9QUHRzRnU3RTBEM2hD?=
 =?utf-8?B?U25qSXpZR2R1MGx6SDk2M29UZXR0SVNQb2NSQUZ5MXdkZEpZMFNId0dDWmdR?=
 =?utf-8?B?a3FqVlVGZUYyVUxkOUttNUpLd2w2ZUYxM3NwWEdNMEF4REZqMEVwRWRPN3BR?=
 =?utf-8?B?V1JpckwxOTM3QXhqQ2t5QjdDZ0I2UUpCMHR0akxlajRZdlVialhsaUNXWWF0?=
 =?utf-8?B?MDJBM2xObkhQaDNhamU5Y3BadEVYYlN5WDE4bWtXWnZlQlV4MXV4SnFwZEF6?=
 =?utf-8?B?OE9MUkdDSGpxQXpMWW1XVnBHTlZJVzhxUThkRHRLR2EvSVlXcGgwTFRCTjBU?=
 =?utf-8?B?d3I4K0QwbVFJNDRNQWFqSEo3YlNKVnR5UXlRWEw2UEZsWExWUEhvMUhNWWxH?=
 =?utf-8?B?VFB2U1pJR1JDTWFCRFdqNmNnNGJ1WTkyMkx3N0lVZXhCaDNCYmU2S2VJblVL?=
 =?utf-8?B?M0R0VkY5empCUkQ4Y0dXQXlHMDZKMnFER21ZeGZPT28wNWQ4VG94WlBYelpr?=
 =?utf-8?B?VStZSE1VOENqR2hkb1hVL0hzbXRlL3JaM3YvK0dFblVJMkgyRzBydklTM2VM?=
 =?utf-8?B?UVAvelI3Q0NkVE0wdEdwZWxvR3NkZ21zaFowZTV3NGdBQ25MR2dnRFgzdGE0?=
 =?utf-8?B?ekpLRUVGbjVkQ0swL0orQW9IYTgwMjBCdVpIMmJGajM3QVdwL3lVdnlNb0N0?=
 =?utf-8?B?SDlFbkFEd2gyb09uQ3JiYmhFZlBmUVpQODg0MndjZnpMRTRyZnduMmdna2x2?=
 =?utf-8?B?cjVmSThjR0d3c3B6Sk5qM2RYWVIyWUMzd1V3ZnlqT2R4djFJQXpGMnhhcjJE?=
 =?utf-8?B?eVJPRGt5WFdKM3UzMWVGNzI3bmtjcFVGOU9lOW11NktjVU1PZGdpUG5KR3ZE?=
 =?utf-8?B?bVFLa3M4VnZUd3ZOaHNhVE5POGlpbktLKzZXZHVKMjQvWkNKRnNPdUdwVmt0?=
 =?utf-8?B?bXRXTGRYQnZSdjVhUWEwbDBkcS9YNWQ4YU1XaUJybXFKdFYwd3QwRXJaVUJt?=
 =?utf-8?B?dHhvUU9RK0Z0NEQzeGtnTjBybkRCY1ZRMmI2UzkxM00zZE9mTW11SjVSWUx5?=
 =?utf-8?B?NGpMclpVcUpKOFVkMURSQTFZbHNqRTluLzJBRFJRdnVyMnV6QlhYbGlUT0c1?=
 =?utf-8?B?QlFuQm95VWJNMklScjQwZGVwVkF4MUpudjlzZ3dWbS9ONkdkTTE4T0NDdE8w?=
 =?utf-8?B?T0gzK2pBZGVESm1lYWFlREZnUk1NM3BETUtSUWRBUTA1UWhaYWVreWZRRHAx?=
 =?utf-8?B?aDY4dTJDRlBxcytrRHp3Z1ZCMncrbG9OL2xpZjJDdlhQc3RQdmN4RDZQbGt5?=
 =?utf-8?B?K244bHV0aWF1cm1sM1krQUU3SzhHc01tOFVQWEhkeFRHaWFJZEF5blhoc1M3?=
 =?utf-8?B?aTFYaTVyOGNMa205bHdsV0h2aVRqUWxHZHNzaFZZNERINGQrR0F6aHA1amdi?=
 =?utf-8?B?VlQzN2ozQUxET1AwUlZidGxNQnNYSVBYclY3S1Uvd1kySHBkY2ZsSUxGN01K?=
 =?utf-8?B?MFNuOU0vbjdhYVNUR3U5UmNOK2pvcGxpa2F0RThxdFFKTnZzNGYvNkNZcGNL?=
 =?utf-8?B?MjE5QWthTmhJVWtPWWtBTzV2eGlTUngrNHJEQVdrNDBiT2E5VXlPUmtFYzli?=
 =?utf-8?B?eGttRHZuWnJ5TzY2REZtS1ZjOUtETmdwNFAwaTk4RFMyNUkyb0FJMWpOdU1k?=
 =?utf-8?Q?xUh59+rwbDB7EkuNhIMsQFU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4516.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3483df-027a-4e02-210c-08d9aaa85e2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2021 15:30:36.0144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i92ipcpvpxgy6WR+7IZCBMivlLDMvdBS3YJCMVmjxcGZNNZXrgKlN91W25qwXPrPaX+pqBmhjBTVbOKte/v5Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3082
X-Mailman-Approved-At: Thu, 18 Nov 2021 15:56:12 +0000
Subject: Re: [Intel-wired-lan] [igb] netconsole triggers warning in
 netpoll_poll_dev
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
Cc: Netdev <netdev@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Thu, May 6, 2021 at 4:32 PM Jesse Brandeburg
> <jesse.brandeburg@intel.com> wrote:
> >
> > Alexander Duyck wrote:
> >
> > > On Sun, Apr 25, 2021 at 11:47 PM Oleksandr Natalenko
> > > <oleksandr@natalenko.name> wrote:
> > > >
> > > > Hello.
> > > >
> > > > On Fri, Apr 23, 2021 at 03:58:36PM -0700, Jakub Kicinski wrote:
> > > > > On Fri, 23 Apr 2021 10:19:44 +0200 Oleksandr Natalenko wrote:
> > > > > > On Wed, Apr 07, 2021 at 04:06:29PM -0700, Alexander Duyck wrote:
> > > > > > > On Wed, Apr 7, 2021 at 11:07 AM Jakub Kicinski
> <kuba@kernel.org> wrote:
> > > > > > > > Sure, that's simplest. I wasn't sure something is supposed
> > > > > > > > to prevent this condition or if it's okay to cover it up.
> > > > > > >
> > > > > > > I'm pretty sure it is okay to cover it up. In this case the
> > > > > > > "budget - 1" is supposed to be the upper limit on what can
> > > > > > > be reported. I think it was assuming an unsigned value anyway.
> > > > > > >
> > > > > > > Another alternative would be to default clean_complete to
> !!budget.
> > > > > > > Then if budget is 0 clean_complete would always return false.
> > > > > >
> > > > > > So, among all the variants, which one to try? Or there was a
> > > > > > separate patch sent to address this?
> > > > >
> > > > > Alex's suggestion is probably best.
> > > > >
> > > > > I'm not aware of the fix being posted. Perhaps you could take
> > > > > over and post the patch if Intel doesn't chime in?
> > > >
> > > > So, IIUC, Alex suggests this:
> > > >
> > > > ```
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > index a45cd2b416c8..7503d5bf168a 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > @@ -7981,7 +7981,7 @@ static int igb_poll(struct napi_struct *napi, int
> budget)
> > > >                                                      struct igb_q_vector,
> > > >                                                      napi);
> > > >         bool clean_complete = true;
> > > > -       int work_done = 0;
> > > > +       unsigned int work_done = 0;
> > > >
> > > >  #ifdef CONFIG_IGB_DCA
> > > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED) @@
> > > > -8008,7 +8008,7 @@ static int igb_poll(struct napi_struct *napi, int
> budget)
> > > >         if (likely(napi_complete_done(napi, work_done)))
> > > >                 igb_ring_irq_enable(q_vector);
> > > >
> > > > -       return min(work_done, budget - 1);
> > > > +       return min_t(unsigned int, work_done, budget - 1);
> > > >  }
> > > >
> > > >  /**
> > > > ```
> > > >
> > > > Am I right?
> > > >
> > > > Thanks.
> > >
> > > Actually a better way to go would be to probably just initialize
> > > "clean_complete = !!budget". With that we don't have it messing with
> > > the interrupt enables which would probably be a better behavior.
> >
> >
> > Thanks guys for the suggestions here! Finally got some time for this,
> > so here is the patch I'm going to queue shortly.
> >
> > From ffd24e90d688ee347ab051266bfc7fca00324a68 Mon Sep 17 00:00:00
> 2001
> > From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Date: Thu, 6 May 2021 14:41:11 -0700
> > Subject: [PATCH net] igb: fix netpoll exit with traffic
> > To: netdev,
> >     Oleksandr Natalenko <oleksandr@natalenko.name>
> > Cc: Jakub Kicinski <kuba@kernel.org>, LKML
> > <linux-kernel@vger.kernel.org>, "Brandeburg, Jesse"
> > <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
> > <anthony.l.nguyen@intel.com>, "David S. Miller"
> <davem@davemloft.net>,
> > intel-wired-lan <intel-wired-lan@lists.osuosl.org>, Alexander Duyck
> > <alexander.duyck@gmail.com>
> >
> > Oleksandr brought a bug report where netpoll causes trace messages in
> > the log on igb.
> >
> > [22038.710800] ------------[ cut here ]------------ [22038.710801]
> > igb_poll+0x0/0x1440 [igb] exceeded budget in poll [22038.710802]
> > WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155
> > netpoll_poll_dev+0x18a/0x1a0
> >
> > After some discussion and debug from the list, it was deemed that the
> > right thing to do is initialize the clean_complete variable to false
> > when the "netpoll mode" of passing a zero budget is used.
> >
> > This logic should be sane and not risky because the only time budget
> > should be zero on entry is netpoll.  Change includes a small refactor
> > of local variable assignments to clean up the look.
> >
> > Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead
> > and improve performance")
> > Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
> > Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > ---
> >
> > Compile tested ONLY, but functionally it should be exactly the same
> > for all cases except when budget is zero on entry, which will
> > hopefully fix the bug.
> > ---
> >  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > b/drivers/net/ethernet/intel/igb/igb_main.c
> > index 0cd37ad81b4e..b0a9bed14071 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct
> igb_q_vector *q_vector)
> >   **/
> >  static int igb_poll(struct napi_struct *napi, int budget)  {
> > -       struct igb_q_vector *q_vector = container_of(napi,
> > -                                                    struct igb_q_vector,
> > -                                                    napi);
> > -       bool clean_complete = true;
> > +       struct igb_q_vector *q_vector;
> > +       bool clean_complete;
> >         int work_done = 0;
> >
> > +       /* if budget is zero, we have a special case for netconsole, so
> > +        * make sure to set clean_complete to false in that case.
> > +        */
> > +       clean_complete = !!budget;
> > +
> > +       q_vector = container_of(napi, struct igb_q_vector, napi);
> >  #ifdef CONFIG_IGB_DCA
> >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> >                 igb_update_dca(q_vector);
> 
> I'm not a big fan of moving the q_vector init as a part of this patch since it
> just means more backport work.
> 
> That said the change itself should be harmless so I am good with it either
> way.
> 
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

Hi,

I have lately added the netconsole module, and since then we see the same warning constantly in the logs.
I have tried to apply Jesse's patch but it didn't seem to solve the issue.

Did anyone managed to solve the issue and can share with us?

Thanks,
Danielle

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
