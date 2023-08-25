Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8EC7883F7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 11:41:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BB5C61019;
	Fri, 25 Aug 2023 09:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BB5C61019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692956486;
	bh=GB9eoFGc7ThSrDzHooVSqRQQioUWckxK50mDuxYoEnM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MFts297a/h9orWpC5lrYxdXx/WAV9qtBiZxaFVIYXjK2qj/mniujEW0xcJyVqiQfr
	 oUU+zsYjPBEnfO4gyyYyhgrkbCv7nnt87oy1E1zfCvgrwt8yVsFSWq3vYAAlimVaTv
	 iVD2TyyFFVKPmYe9Yf0sjgesCR27xWlXXiGJ9sy3bfxvhXxhPzpQpV13IVASZRPXuG
	 NR1RAYfytJLnfNH4862yi4knRo5Djz81tC7HYdpuxM1HTs89f5Wu8DPxpFGlO1JYi2
	 tkemajY2N3I6+gL9BelZ8OoAWqHgThxgrZfQhQCJmpNWU5hQjp4qRmlzMADUoO2OGP
	 5n/STbwvWXGNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6OZs49LKkb5; Fri, 25 Aug 2023 09:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F031760D51;
	Fri, 25 Aug 2023 09:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F031760D51
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F51D1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:41:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 047844192B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:41:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 047844192B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwJzU2mtQT4N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 09:41:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AA0E941924
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA0E941924
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="461037371"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="461037371"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 02:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="730990113"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="730990113"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 25 Aug 2023 02:41:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:41:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 02:41:15 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 02:41:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiZP1/8iYDzNCDy6PvJXWs8Dmc/1gFapPyIJngmR0LEqXV0bhag5Q3BxOPTdwF6mu15aGg3573roDfRApAAcdK0UHsOC+nyQ9L54mqhCMi5oQh0fxH6cSnPUwAG1d/TgCM9aolD6SlyPOht51cSd/r7mpD6WvGk6+ddBf30trCri282a05foUuNxkv2BEdiuSZZa5crUtwSzX541yAH2zFMX1zSAWQqxy8D4eGutUwTQI9NOq7LNWzqcNQ78xn0YaAqerR+GSLVBWmKtaOYaHDBoOTI6MVfDVEOGlBw2lg/RpWyfVVocrncMm/9uhl+auxxK5bdPFPKogjMYN1oOaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hVVFCPN0BadrBjkghvR1Fj3XYyj2NmoaE3XkSYv+NAY=;
 b=E+nOtx3FKbA/4VNaUzPdjp6oERLWXTmczmRUbcD0mdwy2d8IgLkRCpKbAI6+U2v1UpsdqWiUrsQRRZ/8RJvN0iTYGSzdVp+IIj254DscmqvEhfpCj4pZHydYIgmDzYjfH0TjyT0hjET3mqRWIsyxDECVVSLlgw5UpqAoOiB++LEGsAhVJmsoDXC7fRveJGJTazHDy7Bw93iFlX4NCpwY/4XsvB7PQYx16ry9LtEP0O0jXY84d6H+S3/djbEdURKEP75EEx5HpE1RAjuTCen67Dv40J1+y6a9eOquSdfedhLh5Cu2M7Hh9e0ajhAknws6lCs5Jw0wjj9OLTsPHNk6Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB7723.namprd11.prod.outlook.com (2603:10b6:610:127::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 09:41:13 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 09:41:12 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v16 1/5] ice: remove FW
 logging code
Thread-Index: AQHZ1hBVGCZ+KiMSnEeKbCxCJdBN+6/6w7xw
Date: Fri, 25 Aug 2023 09:41:12 +0000
Message-ID: <BL0PR11MB312237A38B9CE0EB5F2C3098BDE3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
 <20230823222152.106-2-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230823222152.106-2-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB7723:EE_
x-ms-office365-filtering-correlation-id: bd032ef9-05ac-4211-8585-08dba54f6b57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1s2mXGPPL76Z0wZk9rhfJaoTXWRb7FogOxGYPhsBHuW4e+PmGTV9gPAm7yLKNPDjA8Yuy+7CEWzFRQncqS7mVzMHijuWhnPJPcayGmfbuKjdAmvo4n7r4M9zs7KSJGMp3TryomTzOGHZG49OGafzCS4zlYezbPSXJ5tAH0EUmS/2JOdb4UfEXBp06QSOSQ/ZNikTo0HKxah3MtFkHbHLvT4l4nD/QIhmeHaPv8DT3RRS9dIEtG2tLdP2k3GoRwolpfzGQNTt5G+cASKXO1YKskZ/oj1yHhnAh+KEOlovdSffyetKJkWWUHRVkjpfXn97/V2JjV3pxrY7T4JEePO6AzS/0bic1HGXkbbyxNfi94UTmG+UjbQWlEUED7Rr+DjQzNF25GDgHwfNSUe//bSvSSQnmIDgzsXZ+JTNZ6c3SgfrNllQDuxfU6HL6y5eDoae3ajnEZgetFGU7we6sjeHffPe1YhyScGEFT/nbCjYuToBN8qseay794M18qaP8NJx3DluB0GFNvmGnFY3RCqMMMdEVvEq7o1U2EAkWxrFCI1eA/zvlyq78efmMKGJTEovvhTAxlIAr7WhBa24D5rqiAjdRbuw0SwyauQXPB4ogtoa8TcsBrncseScXzfyoarj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199024)(1800799009)(186009)(82960400001)(122000001)(38100700002)(38070700005)(8676002)(8936002)(64756008)(41300700001)(6506007)(53546011)(33656002)(316002)(66446008)(7696005)(66476007)(66556008)(110136005)(66946007)(76116006)(86362001)(71200400001)(9686003)(55016003)(26005)(478600001)(83380400001)(2906002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wZ1iSbwOUhBCzsNeKUgcOwkv863zuvg+bkZVvPVGNG0lB6QI8P8FtXe9fyQs?=
 =?us-ascii?Q?3M12h5aAPFdhodYfWRSH3SQKVrKede+rujWe1yddNfTFLSApHtzOwdeMDHRp?=
 =?us-ascii?Q?bICuD9aUew2T/MJe47/v7AkJvWLIonapJ9ldyVQLsVdFCFC5kCrrUd/N/Hfs?=
 =?us-ascii?Q?qUCIOhMaNN2vxMo5LxH+vW1rUJ4uIf9+yFbv6F5nfVOqhB0NqNhOSZtw7MCz?=
 =?us-ascii?Q?OFSyOC8LQotczm01foET/D18oBIX9ZR+69HpYkUTNl8ffwQHiGnfUdImgSBr?=
 =?us-ascii?Q?fC9uRIdRuUtD/6QLorTLliXa/1oIYNMt1d/pod+WNJ32g9gofsvoGnOgqKeS?=
 =?us-ascii?Q?RHiGb03bLvNUMJavk+m267BC3sbPnOJQoIIGUMenvEI+Yt91/R0uQgKHAYug?=
 =?us-ascii?Q?KSnA4P3qFO8vcdokhUGvz53x2XRcFV1siMqUEXiQCgxUuH4UXmgmMgoqfuHZ?=
 =?us-ascii?Q?hLflnaF1yBaYTuJJNe5Hra3So8XsFdjSomgqf/lF3wqj/LPhXiPvQEcVVCIt?=
 =?us-ascii?Q?5/t7nhPAHYc+vPU5hqs0wWcXbPZQiSEMrBRSCs0L+KDAQx4Xn46n/syyzIPN?=
 =?us-ascii?Q?b174uQpHWcMgniKETTeNfbpPGQD1wcSnGwy8mCj+OnlNtC606Ytcmp0dZgZt?=
 =?us-ascii?Q?uqLz0IwBjWb1z9oCKEPP2hkc2kkkRobTKm+dT9hxP0/r5m5rAH1HlCLF802H?=
 =?us-ascii?Q?Xtb07BIjhT6ceY4uQCuTAVTsGNBfQvTKG6SoC55Qug1YhQfaxWUh5w+QlYLv?=
 =?us-ascii?Q?Hygc5BGpqtMM3Z6loywhHztQY+h65MJbF+EWYnJ5W/ovwDPXNTrGOYqXs5I/?=
 =?us-ascii?Q?aGovm0lRqV48k2LEyWU+MHP5L02DqPBZVqNTo7HXATiQtj6ve34IZ4HWh6nw?=
 =?us-ascii?Q?J1lCxaDB/NoPT8L9R1XEf2UMB4YS4BAV2hqwle/WPDf8Bb6+jN4DNjzp5SLB?=
 =?us-ascii?Q?uN2HyDJO9ydTGhAELwjtFbhJZrUO7OUi1RB1SsFPbx8yAnmvv5Z/hlpVDkH9?=
 =?us-ascii?Q?vF+WSWgURPCDB+z/2uvr3glXuD0fGO3m7Znutp1aWCCVnYHNE4es7MQd7jpG?=
 =?us-ascii?Q?VXENDaJ+7NS8MHEyMOs7AkW9fyFZhWo+kIxDwu1iKOF6ZQAWtXKDJW0q2maN?=
 =?us-ascii?Q?BqScE8sR448jSD8f0mJNh8b79/Gwt+YAbyf2MGWXIy4H6P+HC/FZnOcktEhT?=
 =?us-ascii?Q?HyW1103Va+V3wIcg/J7vwb+NwWUfmo3D6wLpm8ScTDYJBtSBIFkgGvI60WgY?=
 =?us-ascii?Q?WiGlRvjkyLN4nfLutKYnWYOjRQcn2+IOaDQSshaRWhL6UkAAEbUzGWz8hdFT?=
 =?us-ascii?Q?pWR5yTVomlpLEqLZ0ufnxub6nDGqMuHqLHQRSgquUZksVkdwPCwRS7NgKMUe?=
 =?us-ascii?Q?AR0MmQ30sFWFcHXjhbH8WXIY1jpJerTAeSB9yEoPVawox8CwyryBPvl21uki?=
 =?us-ascii?Q?jfuK0eQOtF8wQmvwryu3Ja7EzQTzgxFSkaM61p6AQPp4hlPnXGpzzC0IoCjv?=
 =?us-ascii?Q?IMCUvL6TYg0J/Ueha9SqQPxD3SEDtHWMKTpl3Edw4zyWBQ2RufCzgEPlxCP1?=
 =?us-ascii?Q?6BA8G44bns2PNfyOiiGgt76yMn+64rFn9Rs2KH4INiy5+xV7V01ZpYF4GWSs?=
 =?us-ascii?Q?2A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd032ef9-05ac-4211-8585-08dba54f6b57
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 09:41:12.4521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTG0/afgQtqRop++bHD9paicjXI0YXLpGPLEXX6d1HwHc1hzhgtbISLAnBVroyF4uvnyatX57bM2ouCBJz7xRpd8TP0m5up2QZp5xuZjaEcr7wkQZSgcY4oa7wKfnlLM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7723
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692956477; x=1724492477;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hZ+URFQzL9QemTvx8nTp88DMOr6nRZDfjL/mGkzgem0=;
 b=mQZK7GIum5MyeccQO40lD6D+AmpUOosvSyfq2IlXi9ErN0DKPTjGH6cG
 tx1GIIURY5AyvPZazGZ5L2jWI7n/xPB1FFF6oOGKA1T6zSLTTcGt7aYyL
 VnSEr5X0/bBj+BCtbv4d7fS1+huL5neWi9rmk471vugUPmPOOyCWGOVyr
 nAJ18qYiUKPjAmzH68rOEblun2hpkvXjIc8ik+H9ncBtoj/FdVFhyZ2lC
 qhY6FhtVyGsIiApkhMw9PVb94camN5VQswdugquFrgR537orkYcyqzp2E
 g3E9JkfCiQXWdSNLbGmlVZFIVaw8MsCeB8wpD0VTwT4OdjofFiyvW5YLr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mQZK7GIu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v16 1/5] ice: remove FW
 logging code
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Thursday, August 24, 2023 3:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v16 1/5] ice: remove FW logging code
>
> The FW logging code doesn't work because there is no way to set
> cq_ena or uart_ena so remove the code. This code is the original
> (v1) way of FW logging so it should be replaced with the v2 way.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v15->v16: none
> v14->v15: none
> v13->v14: none
> v12->v13: none
> v11->v12: none
> v10->v11: none
> v9->v10: none
> v8->v9: none
> v7->v8: none
> v6->v7: none
> v5->v6: none
> v4->v5: none
> v3->v4: none
> v2->v3: none
> v1->v2: none
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
>  drivers/net/ethernet/intel/ice/ice_common.c   | 217 ------------------
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
>  5 files changed, 319 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
