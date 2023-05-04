Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CB46F70CF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 19:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C4664299A;
	Thu,  4 May 2023 17:25:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C4664299A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683221111;
	bh=DN4EeQ5+iCWlU7TX7H/1q8gAt1gDuOVwDtNP1eq5u3s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w4UHW9nD++vRJwVgu+QRv3aXhrtpc2U0RpYFacAVRPwmdBENnYc5n5UwDSaNEr3Om
	 Zp1zpPckSS1MvrbpG+Pn6xvoZc/GBuzsTsvlO6h04KbgEXZn6if4fZz91aTW8k790H
	 WpjjoApxuAOl9nkDxKFlRoTgBHrtlnukRa5QaLnGyMbNtTXIvbpVbfvtAglKCxI5Ro
	 Dw6fQSWnSa5p4VSHKVuryMoaeu+Ke7GPV3obzW80bhId2dID28eVCb5l/T1ZfFmks1
	 kj3w1E8w/Eq+Zw2qs3yfaRyoOmIikr4DaW048DZ7IUXGnpE8h2XGCv/TcU55hD9crt
	 VPbBjaqDlaz7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6xspdrAM9ryV; Thu,  4 May 2023 17:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1226C40C14;
	Thu,  4 May 2023 17:25:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1226C40C14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92FB31BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 17:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 696AE61644
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 17:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 696AE61644
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y7w-yj-X0yNy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 17:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 934A36157F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 934A36157F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 17:25:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="333408499"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="333408499"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 10:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="808813172"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="808813172"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 04 May 2023 10:15:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 10:15:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 10:15:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 10:15:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 10:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bNNas8/Jss+RiKIMEoZ9tEt72YUMUhcbhB+cvAE89EW6pbVuaEG1TYJrUlDLg6i96mfASdoMrPNQ96GNSQuhdv1aK/Gpnn77OFBbdQ6lB4bdh4EXaQafQgm/y/I/EuCcDcSft3Wex5Wv/5JPH/P0CeBB30l4WIBREYy+VyXu++nOTNaIppU8belcdlkJm3/Mok4EMbvqfarrsc/VmWmyU6iMqOWFqr5TD9E3qhcVYpsSecWRvEyulex/JIIhtFV9ToBYmynsLmDtYziAEvp1X0WTnpcz0PuCGkKQvJnjL4xdw01LKHOKRABrbEc8AIFoPqI/Z9w6v69gB7o+xJ3s8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Na+kAeCVY4yWuHjPyReiM3ncWf7h71VpbffFBzOxN9M=;
 b=mYgFs91RzSrkeoLfafFaNl2W41brG9bQWo5O9y6j3KwYXa/KQHvCri3Tk2IfDBTIZgodd1FEoMBA4L5+ItikTBgBK/7bCW6jUHqScXqF0y0PgudHbZoVaUJe33+GVsRg8J1GsbNGnNvjfdi1ownGyi/z+JO9IZTkWhDaAVkO5+6X0qYeJyaiVyk3zZFHK/5PTGphkFGlVoOWSS7fv8NNYT/CpC3c5C6oHTvrgjpjY45C8TWd7Kn/aSE4ZKrAM9a2z2JD1Z8Wi8IkHBhnVTZXnOEG6VBGf+lMM3c2nDUJo/cHO69CuuxN8v1XX/irTGQd2lNzY0QKSMhUHG/Q7mjrew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA2PR11MB4860.namprd11.prod.outlook.com (2603:10b6:806:11b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Thu, 4 May
 2023 17:15:22 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a4e7:9fa1:19f7:6a41%7]) with mapi id 15.20.6363.026; Thu, 4 May 2023
 17:15:22 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix undersized tx_flags
 variable
Thread-Index: AQHZfqwBNVlVoy2yzUWqVaul7dNhKA==
Date: Thu, 4 May 2023 17:15:22 +0000
Message-ID: <BL0PR11MB3122BA1E6C91C83BBA946503BD6D9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230427092309.3122-1-jan.sokolowski@intel.com>
In-Reply-To: <20230427092309.3122-1-jan.sokolowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA2PR11MB4860:EE_
x-ms-office365-filtering-correlation-id: 34bca0cd-0cec-4db7-4c74-08db4cc324b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ygFgmyFx6p6BnONAYwVofx2SLesFLN8Bo1hZ1PH5ldfgv89v65vjHTN7pr6wQtqdbwHy09gejISykMhcoSqOFUNqBecJQ+wpq5LG8k87irgun4n3mRHRuvDL/5v1JbZZLrQgTZQfzO6s4ZsXDUyTkq68WLRkMdYNegnIo5kHE7lNB7+gCb0E1N5YwoKFDgsP+tGpTNfxYiQxYx4a7mvOVNhK+sLy62MpKIVvv9crVZDQP6UcW/h+Fxnoblezm7TX/rB/ImaRsLTPMeAUYopsD9Jf3AkqD4DjwuNgC2cvqxvJVhkf/9i4nXuXzOeDbdbD8F7LSftvStdq7c77PlfSpwh5DQY7CQOI0GkbnKqJsLLtP6V/kxJTkOW/1W8Odc6Za8hq4r1xU2gSJpKgkRjSULfqnTLidIHafs/mP0n5oYgmj94YxluepILyMrdHzAdLs/U9GsmxLdFmtSdktNtgJRe+dntuBPTCscEBgs5O9/uUTGvrY3AmxcLDaUiv7WaXQayZIlzQ+9HBkfisGEfvVAmkIckFRnwbqFkwzoEdz8kMEhHJThHS+aA+DHHX6OJujO4ppOckBSDFByVUWUVN0FrtsyWnrwkZiZCsJN18+8U1kRnE96UWnj/5FWc3u9z+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(376002)(366004)(346002)(451199021)(7696005)(71200400001)(83380400001)(186003)(55016003)(38100700002)(122000001)(86362001)(33656002)(38070700005)(82960400001)(6506007)(53546011)(9686003)(26005)(5660300002)(110136005)(2906002)(66446008)(66556008)(64756008)(8676002)(66476007)(66946007)(76116006)(316002)(8936002)(478600001)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z6JcC9M6f2UipeGkPJtvhDwJym5RVrbbkxeIjWAmK5/TpUSk1tqYi9OiZOU5?=
 =?us-ascii?Q?qRweDa3YF+FPTjU/KQ87OaEvgFddW5Koi0tbGc5l1/wSnCR3JSWbfOL1WtNK?=
 =?us-ascii?Q?a46oSH170CbvlGhaeRLihKBZH3WnfiOwIrTi97fH5/8qaPdnrRq68g/4vKgc?=
 =?us-ascii?Q?DoP77ce0XwrTM8npB0CaFzFu1yO2I5T93mRz58gfdwYxxD4Z8lvWMVb3vK4E?=
 =?us-ascii?Q?jZF60XOFMH2nwc3s/I+Kp6cIHTGb0/zJz9Q8fRN9AUgSJL1GKK045RuG1eg7?=
 =?us-ascii?Q?cA2wXaL576tJVuXgSI/HVBjzO+djPAmnmbedAEIPSF9hpGfiIRNDGte5LMr9?=
 =?us-ascii?Q?X/FdGEqjFclDfGXidys/QWiaDm+frZmyh04zmP4gaoOVYa+7RkhCuXGhMDxj?=
 =?us-ascii?Q?24+jo4g67hT4nRn+Tf8eBR3fbATBvZhNn+rTikPoWo+Qfok3gnSHuqXMoATe?=
 =?us-ascii?Q?VO0xYknBkP3MOEd/i4OojK0ox8KdAV1yzPSHez8wCNDvNlvk+1I5S2M2uOeG?=
 =?us-ascii?Q?B6kahzK6W0fJXMBgysWfWkrihnr4OmoZmdx3LcyML9qJBfiHVUQf2AWbW+WM?=
 =?us-ascii?Q?w8KD4xg6ZgeM/KnzUoJms6TnsVKHh9h1MJGeQ/vDOI+e8een7UNDs8RSASck?=
 =?us-ascii?Q?Vk4AMEiPNgnY81UIXTkzb0fyLIPnCPhwzFeuYw4XLRIkYHyxgiWynwy3T27Q?=
 =?us-ascii?Q?km4JbxhmLrkNWZ8hd8tSFqg0s2JFlV43Zmdxq2Kg75aMw+EDtZpVOVcMZ1ao?=
 =?us-ascii?Q?+W43LZ/JbOrJIQhRHg6Jv5QpH+hLhJE7VH587jR2zTOSUVWgGkRG2Q7UC2q0?=
 =?us-ascii?Q?lc5VnQ3dJOu3h+0tXlT1obD03PLRFMyahpBEa0nbB/t2SdhuwyBw8WHP3MSi?=
 =?us-ascii?Q?3FVdNZXO8cAxorIhGejcptG4kaw6zyzU/K55bBOv1aPGvaETC23QW2NE2hZy?=
 =?us-ascii?Q?Sm2YzWr7qEFp/EAH+TYT1DSUPE5zGjvSldrGmh7VuGvawWdj5aYF6mQh/WfY?=
 =?us-ascii?Q?LKbuW8G0UI9S40pEGa7bSUV8p5+RziVbOEsGa1FB1oDAf4FEYaKTTygXNWd+?=
 =?us-ascii?Q?emVFREedZWr3EDSnDNt8YF71xSv2c9YJ6oI3I4Ydw7d8arEkgVuXxJnsqXzh?=
 =?us-ascii?Q?2O5FBb1qGrVxXTpl0TMlAL6GD1YV65PhtJOHMklDD1sn1SbDphnq8sNVIZLm?=
 =?us-ascii?Q?8me9fderMHXQNiM2gXmysSfFn3ZcFXU88gTSjEzuwrNP+nBiAg6qGzodW02x?=
 =?us-ascii?Q?rTJLSYrOXrytlEdCRB3b52QvkArkibYT/xSA9IY7vLE/qR8p8yi9MzNrBb28?=
 =?us-ascii?Q?aSduHhgd+S+XyaA86bijQtEhTN+lp6S1LNh6cR3fNZrR8zOMnhKz8FDerBqU?=
 =?us-ascii?Q?7EluURfjjdeOyKcScx1pWBkXD4r8BsLjZiJIj4gQZ3EjPyjPE7HYsCdAFbtF?=
 =?us-ascii?Q?XSmUfpJLHR7sRzrIVchXmHeKP/y/1N5IVtBKiovxArPusqByYcTK64IvoHL7?=
 =?us-ascii?Q?WgWGtT1qlYZ3wagYxJDKNXzfNIRzlMR4ym7VpU69mds6C4eMNRHRoIGvYiaq?=
 =?us-ascii?Q?DF3LLtc631E3y+hhTxzhe+/LPM9PfK1u2Hjz4xNGrC/fQoWP5kaQai7t/ljd?=
 =?us-ascii?Q?RQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34bca0cd-0cec-4db7-4c74-08db4cc324b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 17:15:22.1218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zHZ7HBUCtxr/PgJlGBtoHRXJ/YjOdAhyma+KV6CyXuc/luS7uQhzGXEikiQr3x6TsVyI+sMjSABue0PdUNDunHx9WQlcnqDL5iI0Mjga/UQdtrf56o4cBIZtpMq8buLj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683221103; x=1714757103;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QTGdoviGu6q96ayQNoNyEnaifs/SJmz0+sFP6QS9Q2c=;
 b=UdwyoKoKz/4tgmYn3+Q4et7C1QmCaJ3pO9y7ZNzJTK1KFQC+XVucWzsN
 DsmJLTQoGY/3TQFPix+FpNLZmnQfy4SkUS6ZXmys27XEAyKo+9pel3nx7
 +yNKsYkusBUz6Pi8Ha42SjoXGkZJXyZSWFyPgqR8UP1HfovFuTLMUAgCy
 bQ106N1+NDG1M1lee6RoOs9P54H0D5IAK23TW3h8ERO2cSvk2yLsmkoEX
 WTh4uwwDedQpVwCW5BcbRlemd6DAX/P3/DJHx9PTyx2d7Jdt5Tp7DGu7R
 Iz8TCHU6CQ2XaOPRSqzVLB1xp2+MSrY86B6/FFbA06ArCrigDLRQ5RevP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UdwyoKoK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix undersized tx_flags
 variable
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sokolowski, Jan
> Sent: Thursday, April 27, 2023 2:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix undersized tx_flags variable
>
> As not all ICE_TX_FLAGS_* fit in current 16-bit limited tx_flags field, some VLAN-related flags would not properly apply.
>
> Fix that by refactoring tx_flags variable into flags only and a separate variable that holds VLAN ID. As there is some space left, type variable can fit between those two. Pahole reports no size change to ice_tx_buf struct.
>
> Fixes: aa1d3faf71a6 ("ice: Robustify cleaning/completing XDP Tx buffers")
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
> v2: Applied review tips received on IWL, instead of changing the size of tx_flags now it works by explicit split of flags and vid variable
> ---
> drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  6 +++---
> drivers/net/ethernet/intel/ice/ice_txrx.c    |  8 +++-----
> drivers/net/ethernet/intel/ice/ice_txrx.h    | 12 ++++++------
> 3 files changed, 12 insertions(+), 14 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
