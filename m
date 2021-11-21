Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2265F4588A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 05:30:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EE4C80F35;
	Mon, 22 Nov 2021 04:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWaY37zr-SxX; Mon, 22 Nov 2021 04:30:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9198880F2F;
	Mon, 22 Nov 2021 04:30:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8370A1BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 11:44:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C9F340283
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 11:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfR5O7Y7SDTN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Nov 2021 11:44:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam07on2047.outbound.protection.outlook.com [40.107.212.47])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97D994012F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Nov 2021 11:44:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4VWMln2aAN/k7Qt4yjeF+8QRSCbKP67Dv4GLBwxA9zPw9R6jObP6bu1BcaLy7rc/UUoJERk+BIUyNM5Ezo6RMakPyaKlrcd7n6U2sywOm5+ThUlWPm6TEjzRrPDBMWRKmyD0xN+UGQBhhXl26bwgyv0NEQNhBJsWwOiR3hxdye1R/gEl7TcaMddFuCvtn6kUNBSEy6Li42q//FQ98nULoN0prhKJmFLuUgpxqm9WPun9atSe42xwddBCrAsLIRyq+6sDks4Gf2EDueVAuZ2OdNR0sl5aKmv3TvGrxcYPsv1+lghCttaVgTJHf6TSceMJM7m6DVHbfVFvMysCv15EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l98vVg1pm3sCCi4JzzQp7gN6ZqKHSQxvkTg3nPjSTSQ=;
 b=K/NUbBeC3Ba0DaRhxTPqlHNHJL1Q1SA7Kbdqxcoidg9OStXemfDQ01KPfuFdtLzzCZcux2R+rzTb210sEE3kFDHbQzAr1SEqf8hDk0ow9fND2rU4VMNyDVspi3ahl2D31T3Y1TaJR50mFsJWGBzOvJ9UpijOIlJBfK1qGXc7YoPBLww7ZqbA/5O8MDPEwlh1s5HvGsemYK2FPNseWTowrOF7FgsqNTc1WmSuUNXyuleyXc3L7ojfEamfM/0ysY2O5TrHNT8eEeMao2VxfXZGERmkh0QEd5xUMj0FhXnbtFqSMFEhqyHhhvQ40W7sHbdahBEyeGM1C3XZ5Qgcr3cDrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l98vVg1pm3sCCi4JzzQp7gN6ZqKHSQxvkTg3nPjSTSQ=;
 b=Oq506hn+6i3Lebcy2jP9XICcQ0TKdXcAs5pxyzvdCBcNlNBnrGJQV1LvXg+uU/BFTMJd5wM6g+pWsOgMJeznZOvnQ0hY2q0+VJ7tND3rB6Y5+GLQg0LiIm2klmg3QOqLQY01W2clAdISyQ8jRNyiY+vHGEyxn53nUv4biwr3TKjqIfozTVCcxMGBA/lqm08JFKXOiX44dwAMyjoH2v/Glut4lfTko9ncSxIiCzMIiFxjdTD6qSNDLk1Hqb310mqKfcmDjhCPRQMWZlnHWgk4uDcAqzUDpOwyslBKTKvExdXpomBHVaJrOcfpoqiUKtyORtxQwbvSvH+nyzAF3MB93w==
Received: from DM6PR12MB4516.namprd12.prod.outlook.com (2603:10b6:5:2ac::20)
 by DM6PR12MB4862.namprd12.prod.outlook.com (2603:10b6:5:1b7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Sun, 21 Nov
 2021 11:44:51 +0000
Received: from DM6PR12MB4516.namprd12.prod.outlook.com
 ([fe80::a5c1:7bee:503f:e0d0]) by DM6PR12MB4516.namprd12.prod.outlook.com
 ([fe80::a5c1:7bee:503f:e0d0%9]) with mapi id 15.20.4713.024; Sun, 21 Nov 2021
 11:44:51 +0000
From: Danielle Ratson <danieller@nvidia.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Thread-Topic: [igb] netconsole triggers warning in netpoll_poll_dev
Thread-Index: Adfchsjmgwle+3nASZanfB6Ju1VdOQAEI/4AAIfaIfA=
Date: Sun, 21 Nov 2021 11:44:51 +0000
Message-ID: <DM6PR12MB45162662DF7FAF82E7BD2207D89E9@DM6PR12MB4516.namprd12.prod.outlook.com>
References: <DM6PR12MB45165BFF3AB84602238FA595D89B9@DM6PR12MB4516.namprd12.prod.outlook.com>
 <CAKgT0UfGvcGXAC5VBjXRpR5Y5uAPEPPCsYWjQR8RmW_1kw8TMQ@mail.gmail.com>
In-Reply-To: <CAKgT0UfGvcGXAC5VBjXRpR5Y5uAPEPPCsYWjQR8RmW_1kw8TMQ@mail.gmail.com>
Accept-Language: he-IL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 291fae0d-ddb9-4b89-8579-08d9ace45440
x-ms-traffictypediagnostic: DM6PR12MB4862:
x-microsoft-antispam-prvs: <DM6PR12MB48620C346E8064F3F1789651D89E9@DM6PR12MB4862.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2+6ujWXLB+F2iZihpuP2WDSuIMxHfiDH+xjVFZ5HceFBB18lBEvK7SkKNdUPsJrwulLuwjOnBVTdkvu5/n0VQlYDBndOkH8K+zRZ45p8/Lp6+sRTDKdN20zPAT1GIJoQKuTJmOxlDfdTMtkqTPCF3Qo2UrNaeBN2ukF18rw+LZA3tYwHrHw4U7yDWd6ZXvAb2iDz0PY3hK2zHeR2C4hr6PhvuuO3CZsIytbFHskjVbtCgDTrqU9+W+e2jT8hAp0CJQZ9Zfl3FzUP7jNxU7BGNTZszXLcRC0/3DcSwJa8ik+xoSmYAYhrehpK3D6tZyESW633JeGGdvJqQxvmk7X/GxHrzNU5pg9u0PVYKspFUTcMgQphDpUT7G7iHz0/62/YddeogO7FvsVvYdd7Fbbn+Mk461/djBZL4q2KEqHdUkNCeYFRgZt/Mo/dK0d4tjaqaa4dOjp8CgeUIy54rB1x901z3HLo3G6iZHc7q7/KdcsQHGHxxgp9iktn4+M8EkQ3WHTdnlmBRK6Ve/4tBdVqIP+upcFKiauFGzPecMqQduvguNq9dZu9ockjWSGdSngOijvEl00Wn32XJ9bMWosWmTHWXu3nT9Jg2hSiu0bc9AvFcc13CXkMiXf/P4pY/yzI5XkWa17DFVmy1f0LETKW5Yg04vcG6wqVgdYy/iihX/Wv2e9wsH9Fl0DwBpSwzZOv1UIn5nH5nZN/frIli9eaVE9TNapz+d1d09v305US+8o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4516.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(86362001)(508600001)(8676002)(33656002)(66446008)(64756008)(66476007)(66556008)(9686003)(52536014)(38070700005)(122000001)(54906003)(6506007)(4326008)(6916009)(38100700002)(8936002)(5660300002)(186003)(71200400001)(76116006)(2906002)(66946007)(26005)(83380400001)(7696005)(316002)(309714004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?di9nMmdUNStWUXlCTm5wTVRoQkszbjM3MlN4NUM3TzlDeGdtWW5JZ3dOMDZ6?=
 =?utf-8?B?YVA4bzlLZGVVY0hRbjhrcWRBbVc2VjFVbjJsVDdxYyt4blZvM05TbWY1amVl?=
 =?utf-8?B?UlUwUTUyM0RySjhKbzRLT0VaeitOVU9TRTN3anB1M3Y2UWFxMU8vdXJqVDRN?=
 =?utf-8?B?eTdGc29ERERhY3p6UktWbmwxaXdSZXdDS3ZoUWVUaWZoNkxnQTI1M3QyWDVw?=
 =?utf-8?B?N2R2YWxwZzYybEIwNXprTytTOEdCVlJDMWhFaTdSQ1NickQyc1NMZU1QbkRp?=
 =?utf-8?B?TFRWRFdBZW1vZitWc0pUeHd5UGRJR2FUUU9tQUJaQkJxT3hqanZhZWZQTGRl?=
 =?utf-8?B?Yk5ReUkwVUZmOHNlYWRnUXR6YmhvUGgzeUNZRTExTFlaYUVCQ0gyWW00SE85?=
 =?utf-8?B?SkhDM3NrSUlTcXE5Zy84dVpyemhkc2ZmTVNmZ0M4cHFseDNCMzQvcTNoU3A0?=
 =?utf-8?B?bUphQ3dkUi9qQnFrQUlreGFmTGRBa0haN0w2aTZOQXpSMnFmS3RVcTZkckhP?=
 =?utf-8?B?NnV2cTdqMHA0M3V3Y0FYT1p0Q1lVT0FkZnFuTTkzcnRGY3pzUkRCSS8zS1RI?=
 =?utf-8?B?cDdUWjFXV0VIOXZFRGRhNUd0Ti9rNEE2UVhHZ0s2ZzJUVzg0NFFkSVVSbFVq?=
 =?utf-8?B?RWJtNlRyaStKNXE0dDcwRzE2VXNkcEp0ZklMTk9sYXh5eGgxc0RBRnY2c2lw?=
 =?utf-8?B?ekdCeUZncDFCTGQvTGZYRTlxTFNGSGJSRFRTdnRleUJTaVdvT1UvNlJCTFN3?=
 =?utf-8?B?dEdBTmxtMjdqRitqMWcrSmtMTE9hOExxMzBpRjlwV0ViQnVtZ3BBNDI0RFdU?=
 =?utf-8?B?Y1hTa3pOWkt2OTRKTzF6VHcwVzMxQ1NDN2RraWpNMjJCMjJ1c2dKM2czT3dE?=
 =?utf-8?B?L01sZ1RGcWlvZmlOMFBzVERJMHNvS09VaFgyQmhvbEgzNUhoS0JyN3lMcStl?=
 =?utf-8?B?TndHU3Z0VjBlUFlZZWFOQXVNbWg1NmJkK1pQRGwzZC9oRkpvaXNVVlAxcTlp?=
 =?utf-8?B?czBZMHEvbjhYcXBkK1l1ZEo0czNBMXFVc2J5aHpUYTZGTjZjcEtvTllRTS9k?=
 =?utf-8?B?MkRsUnE3WmJqMmZna3R1NGJmS29Kd3QzZGFERGRubU4vUTJPamJpUkI2RHdI?=
 =?utf-8?B?ZnhCZk4yN3lSNGxZdnhGQWlHZXVITXl5QTNWbGpibStNR1JKeGVzc0VHbWpJ?=
 =?utf-8?B?TTdTQWZKWWpnWks5Y0NKSmNQTktWMUs2aXdJamNtNnM5OXpYMEt3bVd4L2dN?=
 =?utf-8?B?TGRPVjlJa0pQQXFrL21xVjFUOVV6amE4OW9Pb2pldzlyczN4WW5WKytyYmZL?=
 =?utf-8?B?MncvM2U1Q3dub0VvRk5meUZzVjg2ejM2ekF1NkxKNnJpcXRwWEFkYkZFMWNo?=
 =?utf-8?B?aG1MZHZMQ1hCdmhWY09wcHZyQ0FUMEtOOXFTOXZPWTRWd3kxVFBTZWEvVEN6?=
 =?utf-8?B?ZW5HdWI3bUl0TmF6dEROSUFxYmlhT21EK1dKMDdyT0NWa3pycXUrMU5CTnhY?=
 =?utf-8?B?czEyNHh2SEdXVzNqclFMS3JSMjI3ZW4vU0RZQXQzQXlEd0xiU3ZKakI1ajhC?=
 =?utf-8?B?V0sybEhVY3NITFFJc05EK3psYitGaFBwdDVlam1HNGlmQS9SQ2l5OG5nOVdy?=
 =?utf-8?B?YjFvZkpuMXVtczJ0VWQ2d0x4cExaQk90RHRkWnRSb05tODBZRlNWMTJOUE92?=
 =?utf-8?B?VFZpMDFUeWdlZ2JBYitYSExtRlF4a1Q4K2t5b1NqN0VSZGo4ZXp6WHc0MzJs?=
 =?utf-8?B?VmgxTnQxbFl6Um9sRXUyN2I4ZHZLUFFKZ0ZCZGR1SlRoMmFwRjFKOEJTZitY?=
 =?utf-8?B?VFBRUWUzMXByTWh5Z3RvbGxhTU0rNzMyb1pwazNWTGFmTkhpR2wwVGtUNDNt?=
 =?utf-8?B?N3dtSFZhZG5xM2tCdG9WRTlETFAvLzFPalhNTVV1MEg5VmtsWWlVUEFGZkxx?=
 =?utf-8?B?K3FkM3h3Tkl2MlVleVBFZlIrblB4M3NtTVg5M3RGd0h5WWh2UU1CSzNub3RV?=
 =?utf-8?B?NHNWaWoycE9SR3pjY2phaWJNczJLUEV0dW4xbkR1dENTY3o4SFNJMzlXUDh6?=
 =?utf-8?B?QjRKeEVIN0hpQVh5V3p6aENINTNNMjQ3TDMwTXRZcjhBOThsRTdUR25HdnpB?=
 =?utf-8?B?SS8zUXlKRyt4QmJLNk9uaVp2Q3o2RitFU3pSMkRzTVBPUmVrcTd2aFRmelRq?=
 =?utf-8?Q?JtmGKfgPcVK6aNiwsQ5vLsw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4516.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 291fae0d-ddb9-4b89-8579-08d9ace45440
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2021 11:44:51.4795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WAy0Q61i6FRtZ+0heXjt4rVtgk9z4hPpaDo51HzKeTVxIxIAD0o/AxWKUw2N0QrxsrAuXxq0biVLN11sHN2cUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4862
X-Mailman-Approved-At: Mon, 22 Nov 2021 04:30:16 +0000
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Oleksandr Natalenko <oleksandr@natalenko.name>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > >  drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
> > > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > index 0cd37ad81b4e..b0a9bed14071 100644
> > > > --- a/drivers/net/ethernet/intel/igb/igb_main.c
> > > > +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> > > > @@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct
> > > igb_q_vector *q_vector)
> > > >   **/
> > > >  static int igb_poll(struct napi_struct *napi, int budget)  {
> > > > -       struct igb_q_vector *q_vector = container_of(napi,
> > > > -                                                    struct igb_q_vector,
> > > > -                                                    napi);
> > > > -       bool clean_complete = true;
> > > > +       struct igb_q_vector *q_vector;
> > > > +       bool clean_complete;
> > > >         int work_done = 0;
> > > >
> > > > +       /* if budget is zero, we have a special case for netconsole, so
> > > > +        * make sure to set clean_complete to false in that case.
> > > > +        */
> > > > +       clean_complete = !!budget;
> > > > +
> > > > +       q_vector = container_of(napi, struct igb_q_vector, napi);
> > > >  #ifdef CONFIG_IGB_DCA
> > > >         if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
> > > >                 igb_update_dca(q_vector);
> > >
> > > I'm not a big fan of moving the q_vector init as a part of this
> > > patch since it just means more backport work.
> > >
> > > That said the change itself should be harmless so I am good with it
> > > either way.
> > >
> > > Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> >
> > Hi,
> >
> > I have lately added the netconsole module, and since then we see the
> same warning constantly in the logs.
> > I have tried to apply Jesse's patch but it didn't seem to solve the issue.
> >
> > Did anyone managed to solve the issue and can share with us?
> >
> > Thanks,
> > Danielle
> 
> The one issue I can see is that it basically leaves the igb_poll call stuck in
> polling mode.
> 
> The easiest fix for all of this in the in-kernel driver is to just get rid of the
> "min" at the end and instead just "return work_done;". The extra
> complication is only needed if you were to be polling multiple queues and
> that isn't the case here so we should simplify it and get rid of the buggy
> "budget - 1" return value.

Thank you very much for your reply Alexander!
It seems to work well!

Are you planning to send it upstream?

Thanks,
Danielle

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
