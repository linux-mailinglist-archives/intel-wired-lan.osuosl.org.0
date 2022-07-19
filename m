Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A8C579FA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jul 2022 15:30:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 537F860E1E;
	Tue, 19 Jul 2022 13:30:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 537F860E1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658237417;
	bh=At5UoxOjq8sMEtW/Uxr447lbhQMjZ252k3XAXdO/Sjw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vZqBC1NLVEGe2ub3a/olD3GuseU+FLjh2ZyYBBHxwBurFcxp3Idke9qca7LFoVAh1
	 0LNt/zHjSBcZdy8V/eVxGCsGsB093Qkb6qdouecv4lc8OIAjiTJBtUFBenDPk09tLg
	 P5WKVL+17oBka/X3/s/Y9xpfw8y+QpG6ZFVmopSPUb+viLF2acvpU2ghgF/33Fex50
	 ykEFTXhcyzyyPgMiG8itkT1GPmou26glarw4Q7ss4ZkFG9Lr1FNX/5cFC8MFe8fO5S
	 adORgKml9y7earyqE8uD+2rE6DVeutHigOsRvTdcsxtYyYpoIPEp+xd5YTF5urm2E0
	 oFxG/aR4hB6tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wX4y5LNJHoH8; Tue, 19 Jul 2022 13:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 021EB60B9F;
	Tue, 19 Jul 2022 13:30:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 021EB60B9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAEC01BF31E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 13:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9406C81C56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 13:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9406C81C56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lkDuvsA8GPuA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jul 2022 13:30:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11E77817F2
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2091.outbound.protection.outlook.com [40.107.104.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11E77817F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jul 2022 13:30:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDD5ajf/IiP5x8hZhmVPdu3zj6XBvZft5bmhSPzMLPxoEA/TpC380UTYC1NqoDv0FSeba0By/YOp7VaUOtpk6SxvG1KdoAWa46dkKHjByfHqRFMkK6UHqasZER7HrO+aj8IoU8MW0yh6P6qvN9DGK1pz7dZvdgykNDihqUpOdMMO79JddneRKz+I20xK/YqcRiSxgZ39UxsgkjO2zVbW8JqgxXS4MTpHWJtaJl00orYwod2RF9hzYk5BFQV1iQ9Qq68YVi/6s2O2TJ0wNL47rTmVnavIauKPf4mKYVRm1mEoCnjhv2Wgq76pE57KpUmJjHKAcG58srtZZ0kkDzcZbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eh5KlUuiz05wFcEgnnyAkNawNx40LIrPRmFIVQi3Kbc=;
 b=LD3CS2NPQQX3Csfcx9Sge5/V0fzSGxlPi4r+lprz+ZMwCtNbjUgqSDolH2DD1mUInAMubyxQg8eYUanZoJb/AJxqKVnHHpnbiXz+AuwPmBb4k4QSOR1dkWQvA/bGEVrGLui+eo9Amfj2jMhMsJFnzN+CDObvKZCLiBuNP6prhaokL15d0PuArd9IN3LcqUePdKoKpCDiPrTK6AtpP1JnZa/+gQrQImdt5Al6Q3WIgrSWSLg929B/GyfzWl+3p9XqhdtVG/0C5rzEkJO6rgXUD7XloqiZ/8iZ0qR3dJXotszk7r79t6+rKnxjP6+dKCNnyTt/0TMvmN+apNCYR6JIxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com (2603:10a6:803:b::16)
 by DB6PR04MB3031.eurprd04.prod.outlook.com (2603:10a6:6:a::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.23; Tue, 19 Jul 2022 13:30:04 +0000
Received: from VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::d00f:d6d0:6a7e:4d12]) by VI1PR0402MB3517.eurprd04.prod.outlook.com
 ([fe80::d00f:d6d0:6a7e:4d12%4]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 13:30:04 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
Thread-Index: AQHYOWvdWqmAHssz20i907ezZMIDY6zF0lkAgFYAzICAaqDKcA==
Date: Tue, 19 Jul 2022 13:30:03 +0000
Message-ID: <VI1PR0402MB35172FB699C5CF918C65D3DCEA8F9@VI1PR0402MB3517.eurprd04.prod.outlook.com>
References: <20220316192710.9947-1-jeffd@silicom-usa.com>
 <56cd0dde-600d-1bb0-1555-e66de8c37236@intel.com>
 <51308ed3-09c1-6bf2-190b-306abd42f3da@intel.com>
In-Reply-To: <51308ed3-09c1-6bf2-190b-306abd42f3da@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb37d4fa-fd22-4936-5604-08da698ac9f4
x-ms-traffictypediagnostic: DB6PR04MB3031:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DDYiWl0p+lHZS9+RVvrbxDF2wVD/vXH/Xr7Rv+d0dn9tL5tMThrb/W41Oe32X2SPZB9KnC02dadyP/2oz3U8g2g89EchyzS6WBdfbIUv6FxVH7GK14SoyJvLT50c2U2G26b3RQduq2ZU9L2rzkxXGu2cMUyofVAyKzdpFesFY5zlUQhlab/+lGx2uL9wKYPOtO7jyOid+5y0mc1RMkJPYNCFX8pq0qeWPlB2SoJEwzvO+2RXGB/un79ah82OOuFGccBgHSmXFTBue+0lxInHOditWJvRJ/8WiGsScRWrwPyCwlHjOmoROrOdRhtwEIpXF5lPhLdB7h5aPcUJGUFEJs8NehMDW5F+Htlf68vP65hUY368U0za69zgOKClFEd5LFvyJqDgokTu7C+9qRrFm1Fpc+p6pJd8iC9Ug0aOQNRJu2MlzjSOMQ3sinZT1pm77TIP/KBUbPm4ehHBwd8THtanjLYer9hR4mQ0rK5dDyd3bmEtHAmiQZFgVh3s+2JpGAy8c3XJ9/mnFbrJPYV2lB7uDXk023kQF3ojsGxF3mtu9ry5pB6IncW716RSWgbjNj6CBRl5ji7UOX3SlaKBtWhRDTVk99P52yDA4hTL1IdE2VON/Ab2nYvYj19kPlMax+XSvyw1GUtDAWKIERGzU0J70/oqCCmAlYREXoaEZzV91ZpG69ri5KUfC40C1tNHAyK+SwYgT3MVvpQHXkr0y6cH0hTXgDbQeSIItt0WaNRw7BVlqZ1zs842qK/l4VNEwNpCkAqu2j1kcQTsoowo7h8Xzomv0qimKyZ0cTfWRaF7MBFRX3aZr5+yUikILTAo2OYyJa2u8m6ct1VY75WjIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3517.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(366004)(39850400004)(396003)(136003)(376002)(346002)(966005)(53546011)(478600001)(110136005)(6506007)(8676002)(86362001)(41300700001)(7696005)(9686003)(71200400001)(316002)(66556008)(38100700002)(8936002)(55016003)(122000001)(33656002)(83380400001)(186003)(64756008)(4326008)(2906002)(66946007)(52536014)(66476007)(66446008)(38070700005)(5660300002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2ZsWjFROTRxVHJiY2EvcW5zRUlqYlMxS0ZWdC9HUlpTVmQwS09OOHRRMkc2?=
 =?utf-8?B?OUt2WnAreFEzVGNiZkprdGQzaG5lbmNBMTBvZzRXYkpyc1VhSkU4RHpBYUtr?=
 =?utf-8?B?c3RtSHYvR1pSdFA5cllhVnNMUlBYQ2NGR3dDYk42LzZXOXEwR2lvdGM5K0Na?=
 =?utf-8?B?aXBvNHdvaFZlNzVVNmMrTWdVZGhnOWk4S3o0cnpMUFREUUROTllOSkpCNkZF?=
 =?utf-8?B?bmtxVnJZa3ZXQkVkRUkxRExENEp4Z2RmUE0zT3JmTExuQktNMjBHa3N6WlBD?=
 =?utf-8?B?ZWRKdHZjZG5CUFNvaGpqd0lFSUx6VEwxRWhldUNOWnVneTRlT3NhY1hPWU9G?=
 =?utf-8?B?ZHpvTXE2MEVDK2x3MjFuRWZiUmwzU2J5QmlJWnJERUdYSmVjNnBYRFRxYTVp?=
 =?utf-8?B?NHJlQ280SGM0S1VKOHp6bXhDOHd5RFBFS29pYVgyZW52NithYS9OT0dMN3g4?=
 =?utf-8?B?NjFPVDM1SnljbUEzY003d05IQ3J3SzhVQnQzY2dMVEhCeWZLZVBJRVhuNGQ1?=
 =?utf-8?B?c2Y0cFZGZXhTS1hKQVI1TUd3ZENUY1hITzBycFlFT0hrSGRsdm1jRFRmeEdt?=
 =?utf-8?B?SlgxYUNoeWxVZnVnaXUvKzFqQmFrblZOQ2dJTitscUlXTWVVWXh0UFRvT3pY?=
 =?utf-8?B?RGpiNmlGYmdORXFKVWdpalRObkY3Y3dYUnU2enAvbWZuQXJsNkVZNk5OOXlw?=
 =?utf-8?B?UTJZRGJKMWVyd0dvUnVyVzNFeDlma2Q2WUpmYkxJaVZMLyt6OFRRM1R4cEdR?=
 =?utf-8?B?dGlyWU9tcEY4SGFIZFpuQVczYkVqc3VtaWNUQVhSRVNlVHIySGx0TGlTRzU1?=
 =?utf-8?B?MkFHWEZNYnIvOWhvaGYySHdMTnRaOU9VVjRvK2NxeWtBQVJxakpZTmlTcSt1?=
 =?utf-8?B?UVpudmZ0VUQvaFlZSzluOGlGSHQ1bEE0Qi81MHVTcGpqYXNXcUR1cFlOVCtT?=
 =?utf-8?B?NUc3OHVscm5TOHgrckdCQzR6VjNUaWU5cEQ4Um5VRzJ6US9LYlZrL04rdjFy?=
 =?utf-8?B?TTlESW40K1pjemxBV1lMeWlVTmpoQTJLcnFGc1FEZzRSV1ZsVFlhamtzYVg3?=
 =?utf-8?B?dlZ2RWtjS1U2TGdPLzBxZUZQb3ZhV1dVK3FMdGVUT0pYdUtxd0ZqK2JoQkhL?=
 =?utf-8?B?aUlhcGxNclpCY1phOEVBMTBSeS9WRlMvU3hwZFdQYW9nR0RrSzFLMGNkVyth?=
 =?utf-8?B?dW1KNGI3czBjZjU0ZGFoY3FzdUVaYkxNRDdXTjlyUlI3V01HblNXOVNGSjYy?=
 =?utf-8?B?LzRhNG1FbFB6RDNuaDZNWmhGMnZncjlpM29lbU1GcmpOYjgvSkxnazcrRHQ5?=
 =?utf-8?B?N0h4SkpEWEF0Sk5iV1dUUG4yR2x6bGlZNU1RZUFHdmN4ZDAwMmhCTVN6TEdt?=
 =?utf-8?B?V2xqcmN2RElYUmFKZ213VmxhV053K2lmQVAwbnhuMzFYOWNuSHFNWnMwUjRY?=
 =?utf-8?B?cTViUnBJYkRlVE1Id21Xa3ZSZXlxZ2tuQk9PNnNKSUhXWkhRZ2E4UXlsOWdn?=
 =?utf-8?B?TlEwLzhncEp2ZnpZWlRBdTVkZnU1WGZHQ2JodG9uQStUSm9uK0c5My9uODF5?=
 =?utf-8?B?QWE4NFR3eFNLMnJ6ZE9WWGlnbGNPQnpWb1F6ZnJScW5OVTdpT0xLSjNSNmtm?=
 =?utf-8?B?SlNLSG5IZ3lvbkRHZzJUbW55U0xOWTlXVFloVkMvbmNid3V2QlhXZ3RoVVdx?=
 =?utf-8?B?WWNGYURFb2IxUmsvbGhZYWZLUWc0OUpqN0pZNlptT3IwNS9BbC9CQnBhcUNG?=
 =?utf-8?B?SHAycW5YVFpXWUpOQldpSHBPZ09tQ1pwMjdSWEV0M1dWMHJRM3BlNjJDZ1FE?=
 =?utf-8?B?ZlR5MmtYaERYVVBIVjQycE8yTUdWbE90RkM5U2R3THJpVytCLzJlRFluMGFa?=
 =?utf-8?B?bituNGhJaFVFWW05cUFuYXp2UjY3R2JxMEs4ZnZwMm1QSWEwMExZaUNMV1p3?=
 =?utf-8?B?N05UUFRiOFZWSVd3RENGOU1sWlJuK09LVjc2am04cTFRWGNQYm5VTk5sYkpo?=
 =?utf-8?B?M1hvSkl3ajZUUnVCVjluNjV4cVk4TEc0bDhqM0F2UWZqQkVVaSt6dVFoL1I0?=
 =?utf-8?B?bUt1M2VXSFpkN0pjM3FrSGNWMC9qSGt0dnJleTM1UTF4dDlyalEyN0p2Rmd5?=
 =?utf-8?B?RWFpSlk2REFJNlFFemNQbnU0bnJTM0NKcWJud1FCZk5NNGZKL09INTZzdDRG?=
 =?utf-8?B?eVE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3517.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb37d4fa-fd22-4936-5604-08da698ac9f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 13:30:04.0826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0w/Z1v+mPyuYg+dIX5GFTfCuPAAsrF60D2qsQPImF4BRq9UsEliyeNrvgCkYo2z2Cmu8+vXz/Z9XQvfYQCEZLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3031
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eh5KlUuiz05wFcEgnnyAkNawNx40LIrPRmFIVQi3Kbc=;
 b=CD9r6c7SxoaIJanDnHLg6LkFovG6ws3ftYGoWlQujWe7pkz2cYpVz7eFKlCdYgLxD04Fdb+w0P9FGyhj53UBtiU31bTRENaY04fZHU1gz/b+3SXpj1u8Ej6/kdEHNDUuyjQI8MV3dEv75Qn6li0uXbbBSuTyAhrNC1gqUcvhYqQ=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=SILICOMLTD.onmicrosoft.com
 header.i=@SILICOMLTD.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-SILICOMLTD-onmicrosoft-com header.b=CD9r6c7S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSBjYW4ndCByZXBsYWNlIHRoZSBoYXJkY29kZWQgdmFsdWVzIHdpdGggbWVhbmluZ2Z1bCBhc3Np
Z25tZW50cyBiZWNhdXNlIEkgZG9uJ3Qga25vdyB3aGF0IHRoZSBiaXQgbmFtZXMgYXJlLiAgVGhp
cyB3YXMgb3JpZ2luYWxseSBhIHBhdGNoIHRoYXQgSW50ZWwgd29ya2VkIG9uIGZvciBTaWxpY29t
LiAgSSBzdXNwZWN0IHRoZXkgYXJlIGFsbCBERlQgYml0cyBhbmQgYXMgc3VjaCBhcmUgcHJvYmFi
bHkgbm90IGdvaW5nIHRvIGJlIGRpc2Nsb3NlZC4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiBGcm9tOiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+
IFNlbnQ6IFRodXJzZGF5LCBNYXkgMTIsIDIwMjIgMTowOSBQTQ0KPiBUbzogSmVmZiBEYWx5IDxq
ZWZmZEBzaWxpY29tLXVzYS5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsN
Cj4gU2thamV3c2tpLCBQaW90clggPHBpb3RyeC5za2FqZXdza2lAaW50ZWwuY29tPg0KPiBDYzog
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IG9wZW4gbGlzdDpORVRXT1JLSU5HIERS
SVZFUlMNCj4gPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+OyBvcGVuIGxpc3QgPGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc+OyBEYXZpZCBTLg0KPiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIGl4Z2JlOiBNYW51
YWwgQU4tMzcgZm9yIHRyb3VibGVzb21lIGxpbmsNCj4gcGFydG5lcnMgZm9yIFg1NTAgU0ZJDQo+
IA0KPiBDYXV0aW9uOiBUaGlzIGlzIGFuIGV4dGVybmFsIGVtYWlsLiBQbGVhc2UgdGFrZSBjYXJl
IHdoZW4gY2xpY2tpbmcgbGlua3Mgb3INCj4gb3BlbmluZyBhdHRhY2htZW50cy4NCj4gDQo+IA0K
PiBPbiAzLzE4LzIwMjIgNDo0NyBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6DQo+ID4NCj4gPiBPbiAz
LzE2LzIwMjIgMTI6MjcgUE0sIEplZmYgRGFseSB3cm90ZToNCj4gPj4gU29tZSAoSnVuaXBlciBN
WDUpIFNGUCBsaW5rIHBhcnRuZXJzIGV4aGliaXQgYSBkaXNpbmNsaW5hdGlvbiB0bw0KPiA+PiBh
dXRvbmVnb3RpYXRlIHdpdGggWDU1MCBjb25maWd1cmVkIGluIFNGSSBtb2RlLiAgVGhpcyBwYXRj
aCBlbmFibGVzIGENCj4gPj4gbWFudWFsIEFOLTM3IHJlc3RhcnQgdG8gd29yayBhcm91bmQgdGhl
IHByb2JsZW0uDQo+ID4NCj4gPiBIaSBKZWZmLA0KPiA+DQo+ID4gSSB0YWxrZWQgdG8gdGhlIGl4
Z2JlIHRlYW0gYWJvdXQgdGhpcyBhbmQgd2UgbmVlZCBhIGJpdCBtb3JlIHRpbWUgdG8NCj4gPiBs
b29rIHRoaXMgb3Zlci4gV2lsbCBrZWVwIHlvdSB1cGRhdGVkLg0KPiANCj4gSGkgSmVmZiwNCj4g
DQo+IE91ciBkZXZlbG9wZXIgaXMgaGF2aW5nIHNvbWUgaXNzdWVzIHJlc3BvbmRpbmcgdG8gdGhp
cyBidXQgdGhpcyBwYXRjaCBsb29rIG9rLg0KPiBIb3dldmVyLCBjYW4geW91IHBsZWFzZSBhZGRy
ZXNzIHRoZSB1bm5lZWRlZCBzdGF0dXMgYXNzaWdubWVudHMuIEFsc28sDQo+IHJlcGxhY2UgdGhl
IG1hZ2ljIG51bWJlcnMgZm9yIHRoZSByZWdpc3RlciB3cml0ZXMgd2l0aCBtZWFuaW5nZnVsIGRl
ZmluZQ0KPiBuYW1lcy4NCj4gDQo+IFRoYW5rcywNCj4gVG9ueQ0KPiANCj4gPg0KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBKZWZmIERhbHkgPGplZmZkQHNpbGljb20tdXNhLmNvbT4NCj4gPj4gLS0tDQo+
ID4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oIHzCoCAz
ICsrDQo+ID4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5j
IHwgNTAgKysrKysrKysrKysrKysrKysrKw0KPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5z
ZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaXhnYmUvaXhnYmVfdHlwZS5oDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfdHlwZS5oDQo+ID4+IGluZGV4IDI2NDc5MzdmN2Y0ZC4uZGM4YTI1OWZk
YTVmIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9p
eGdiZV90eXBlLmgNCj4gPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUv
aXhnYmVfdHlwZS5oDQo+ID4+IEBAIC0zNzA1LDcgKzM3MDUsOSBAQCBzdHJ1Y3QgaXhnYmVfaW5m
byB7DQo+ID4+ICAgI2RlZmluZSBJWEdCRV9LUk1fTElOS19TMShQKSAgICAgICAgKChQKSA/IDB4
ODIwMCA6IDB4NDIwMCkNCj4gPj4gICAjZGVmaW5lIElYR0JFX0tSTV9MSU5LX0NUUkxfMShQKSAg
ICAoKFApID8gMHg4MjBDIDogMHg0MjBDKQ0KPiA+PiAgICNkZWZpbmUgSVhHQkVfS1JNX0FOX0NO
VExfMShQKSAgICAgICAgKChQKSA/IDB4ODIyQyA6IDB4NDIyQykNCj4gPj4gKyNkZWZpbmUgSVhH
QkVfS1JNX0FOX0NOVExfNChQKSAgICAgICAgKChQKSA/IDB4ODIzOCA6IDB4NDIzOCkNCj4gPj4g
ICAjZGVmaW5lIElYR0JFX0tSTV9BTl9DTlRMXzgoUCkgICAgICAgICgoUCkgPyAweDgyNDggOiAw
eDQyNDgpDQo+ID4+ICsjZGVmaW5lIElYR0JFX0tSTV9QQ1NfS1hfQU4oUCkgICAgICAgICgoUCkg
PyAweDk5MTggOiAweDU5MTgpDQo+ID4+ICAgI2RlZmluZSBJWEdCRV9LUk1fU0dNSUlfQ1RSTChQ
KSAgICAgICAgKChQKSA/IDB4ODJBMCA6IDB4NDJBMCkNCj4gPj4gICAjZGVmaW5lIElYR0JFX0tS
TV9MUF9CQVNFX1BBR0VfSElHSChQKSAgICAoKFApID8gMHg4MzZDIDogMHg0MzZDKQ0KPiA+PiAg
ICNkZWZpbmUgSVhHQkVfS1JNX0RTUF9UWEZGRV9TVEFURV80KFApICAgICgoUCkgPyAweDg2MzQg
OiAweDQ2MzQpDQo+ID4+IEBAIC0zNzE1LDYgKzM3MTcsNyBAQCBzdHJ1Y3QgaXhnYmVfaW5mbyB7
DQo+ID4+ICAgI2RlZmluZSBJWEdCRV9LUk1fUE1EX0ZMWF9NQVNLX1NUMjAoUCkgICAgKChQKSA/
IDB4OTA1NCA6IDB4NTA1NCkNCj4gPj4gICAjZGVmaW5lIElYR0JFX0tSTV9UWF9DT0VGRl9DVFJM
XzEoUCkgICAgKChQKSA/IDB4OTUyMCA6IDB4NTUyMCkNCj4gPj4gICAjZGVmaW5lIElYR0JFX0tS
TV9SWF9BTkFfQ1RMKFApICAgICAgICAoKFApID8gMHg5QTAwIDogMHg1QTAwKQ0KPiA+PiArI2Rl
ZmluZSBJWEdCRV9LUk1fRkxYX1RNUlNfQ1RSTF9TVDMxKFApICAgICgoUCkgPyAweDkxODAgOiAw
eDUxODApDQo+ID4+ICAgI2RlZmluZSBJWEdCRV9LUk1fUE1EX0ZMWF9NQVNLX1NUMjBfU0ZJXzEw
R19EQSAgICAgICAgfigweDMgPDwgMjApDQo+ID4+ICAgI2RlZmluZSBJWEdCRV9LUk1fUE1EX0ZM
WF9NQVNLX1NUMjBfU0ZJXzEwR19TUiAgICAgICAgQklUKDIwKQ0KPiA+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jDQo+ID4+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jDQo+ID4+IGluZGV4IGU0
YjUwYzc3ODFmZi4uZjQ4YTQyMmFlODNmIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV94NTUwLmMNCj4gPj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfeDU1MC5jDQo+ID4+IEBAIC0xNzI1LDYgKzE3MjUs
NTYgQEAgc3RhdGljIHMzMiBpeGdiZV9zZXR1cF9zZmlfeDU1MGEoc3RydWN0DQo+ID4+IGl4Z2Jl
X2h3ICpodywgaXhnYmVfbGlua19zcGVlZCAqc3BlZWQpDQo+ID4+ICAgICAgICAgICAgICAgICAg
IElYR0JFX0tSTV9QTURfRkxYX01BU0tfU1QyMChody0+YnVzLmxhbl9pZCksDQo+ID4+ICAgICAg
ICAgICAgICAgICAgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgcmVnX3ZhbCk7DQo+ID4+
ICsgICAgLyogY2hhbmdlIG1vZGUgZW5mb3JjZW1lbnQgcnVsZXMgdG8gaHlicmlkICovDQo+ID4+
ICsgICAgc3RhdHVzID0gbWFjLT5vcHMucmVhZF9pb3NmX3NiX3JlZyhodywNCj4gPj4gKyAgICAg
ICAgICAgICAgICBJWEdCRV9LUk1fRkxYX1RNUlNfQ1RSTF9TVDMxKGh3LT5idXMubGFuX2lkKSwN
Cj4gPj4gKyAgICAgICAgICAgICAgICBJWEdCRV9TQl9JT1NGX1RBUkdFVF9LUl9QSFksICZyZWdf
dmFsKTsNCj4gPj4gKyAgICByZWdfdmFsIHw9IDB4MDQwMDsNCj4gPj4gKw0KPiA+PiArICAgIHN0
YXR1cyA9IG1hYy0+b3BzLndyaXRlX2lvc2Zfc2JfcmVnKGh3LA0KPiA+PiArICAgICAgICAgICAg
ICAgIElYR0JFX0tSTV9GTFhfVE1SU19DVFJMX1NUMzEoaHctPmJ1cy5sYW5faWQpLA0KPiA+PiAr
ICAgICAgICAgICAgICAgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgcmVnX3ZhbCk7DQo+
ID4NCj4gPiBJIGRvbid0IHNlZSBhIG5lZWQgZm9yIGFsbCB0aGUgc3RhdHVzIGFzc2lnbm1lbnRz
LCB0aGV5J3JlIG5vdCBiZWluZw0KPiA+IHVzZWQgYmVmb3JlIGJlaW5nIG92ZXJ3cml0dGVuLg0K
PiA+DQo+ID4gVGhhbmtzLA0KPiA+DQo+ID4gVG9ueQ0KPiA+DQo+ID4+ICsgICAgLyogbWFudWFs
bHkgY29udHJvbCB0aGUgY29uZmlnICovDQo+ID4+ICsgICAgc3RhdHVzID0gbWFjLT5vcHMucmVh
ZF9pb3NmX3NiX3JlZyhodywNCj4gPj4gKyAgICAgICAgICAgICAgICBJWEdCRV9LUk1fTElOS19D
VFJMXzEoaHctPmJ1cy5sYW5faWQpLA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JFX1NCX0lP
U0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOw0KPiA+PiArICAgIHJlZ192YWwgfD0gMHgyMDAw
MjI0MDsNCj4gPj4gKw0KPiA+PiArICAgIHN0YXR1cyA9IG1hYy0+b3BzLndyaXRlX2lvc2Zfc2Jf
cmVnKGh3LA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JFX0tSTV9MSU5LX0NUUkxfMShody0+
YnVzLmxhbl9pZCksDQo+ID4+ICsgICAgICAgICAgICAgICAgSVhHQkVfU0JfSU9TRl9UQVJHRVRf
S1JfUEhZLCByZWdfdmFsKTsNCj4gPj4gKw0KPiA+PiArICAgIC8qIG1vdmUgdGhlIEFOIGJhc2Ug
cGFnZSB2YWx1ZXMgKi8NCj4gPj4gKyAgICBzdGF0dXMgPSBtYWMtPm9wcy5yZWFkX2lvc2Zfc2Jf
cmVnKGh3LA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JFX0tSTV9QQ1NfS1hfQU4oaHctPmJ1
cy5sYW5faWQpLA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tS
X1BIWSwgJnJlZ192YWwpOw0KPiA+PiArICAgIHJlZ192YWwgfD0gMHgxOw0KPiA+PiArDQo+ID4+
ICsgICAgc3RhdHVzID0gbWFjLT5vcHMud3JpdGVfaW9zZl9zYl9yZWcoaHcsDQo+ID4+ICsgICAg
ICAgICAgICAgICAgSVhHQkVfS1JNX1BDU19LWF9BTihody0+YnVzLmxhbl9pZCksDQo+ID4+ICsg
ICAgICAgICAgICAgICAgSVhHQkVfU0JfSU9TRl9UQVJHRVRfS1JfUEhZLCByZWdfdmFsKTsNCj4g
Pj4gKw0KPiA+PiArICAgIC8qIHNldCB0aGUgQU4zNyBvdmVyIENCIG1vZGUgKi8NCj4gPj4gKyAg
ICBzdGF0dXMgPSBtYWMtPm9wcy5yZWFkX2lvc2Zfc2JfcmVnKGh3LA0KPiA+PiArICAgICAgICAg
ICAgICAgIElYR0JFX0tSTV9BTl9DTlRMXzQoaHctPmJ1cy5sYW5faWQpLA0KPiA+PiArICAgICAg
ICAgICAgICAgIElYR0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOw0KPiA+PiAr
ICAgIHJlZ192YWwgfD0gMHgyMDAwMDAwMDsNCj4gPj4gKw0KPiA+PiArICAgIHN0YXR1cyA9IG1h
Yy0+b3BzLndyaXRlX2lvc2Zfc2JfcmVnKGh3LA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JF
X0tSTV9BTl9DTlRMXzQoaHctPmJ1cy5sYW5faWQpLA0KPiA+PiArICAgICAgICAgICAgICAgIElY
R0JFX1NCX0lPU0ZfVEFSR0VUX0tSX1BIWSwgcmVnX3ZhbCk7DQo+ID4+ICsNCj4gPj4gKyAgICAv
KiByZXN0YXJ0IEFOIG1hbnVhbGx5ICovDQo+ID4+ICsgICAgc3RhdHVzID0gbWFjLT5vcHMucmVh
ZF9pb3NmX3NiX3JlZyhodywNCj4gPj4gKyAgICAgICAgICAgICAgICBJWEdCRV9LUk1fTElOS19D
VFJMXzEoaHctPmJ1cy5sYW5faWQpLA0KPiA+PiArICAgICAgICAgICAgICAgIElYR0JFX1NCX0lP
U0ZfVEFSR0VUX0tSX1BIWSwgJnJlZ192YWwpOw0KPiA+PiArICAgIHJlZ192YWwgfD0gSVhHQkVf
S1JNX0xJTktfQ1RSTF8xX1RFVEhfQU5fUkVTVEFSVDsNCj4gPj4gKw0KPiA+PiArICAgIHN0YXR1
cyA9IG1hYy0+b3BzLndyaXRlX2lvc2Zfc2JfcmVnKGh3LA0KPiA+PiArICAgICAgICAgICAgICAg
IElYR0JFX0tSTV9MSU5LX0NUUkxfMShody0+YnVzLmxhbl9pZCksDQo+ID4+ICsgICAgICAgICAg
ICAgICAgSVhHQkVfU0JfSU9TRl9UQVJHRVRfS1JfUEhZLCByZWdfdmFsKTsNCj4gPj4gKw0KPiA+
PiAgICAgICAvKiBUb2dnbGUgcG9ydCBTVyByZXNldCBieSBBTiByZXNldC4gKi8NCj4gPj4gICAg
ICAgc3RhdHVzID0gaXhnYmVfcmVzdGFydF9hbl9pbnRlcm5hbF9waHlfeDU1MGVtKGh3KTsNCj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IElu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
Zw0KPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
