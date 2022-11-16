Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 591E462B922
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 11:39:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC5AD61015;
	Wed, 16 Nov 2022 10:39:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC5AD61015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668595160;
	bh=P4stYmKcyFUWh+N0LSEaxFaafGEcGbKMP/Y8+y+wwz0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z5E8qY40abhiCL6eid4NbN96aGdHla0hQf7lVbDvatws5QiAk5IQlnjgcKJ5HCrUB
	 3RUm6b4H0GFj99/QqzhV4fKVZePqqb1fFHYCA1TFzDH/m3XwWhRJSjefwZKt4yk35w
	 V49mpRpPLu5ul8ru5NlyGKXVRIjdtRl2QyI3YrrR8jsgbGFfK9OneQjsJrlJh7BbGp
	 WHHp0LH81+eoYk40KO+6xkU8sVyd6g+xF64Dyf093W7h05DflOdn9nKfxA+q+7IIv3
	 4xzUOWk6Ywyp0ssIjVP6Ijdn1FDzlCn+MS062CvuNJgrYwZ98+bHQCAS9Cup5G9FYE
	 8r0sRnKtEIWWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JiTm0jjKlFe4; Wed, 16 Nov 2022 10:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BABAB6100C;
	Wed, 16 Nov 2022 10:39:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BABAB6100C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4361BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 10:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA3D841809
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 10:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA3D841809
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yta7BgmgZXWk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 10:39:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFE72417CB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DFE72417CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 10:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="313662367"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="313662367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 02:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="672349195"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="672349195"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 16 Nov 2022 02:39:12 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:39:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 02:39:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 02:39:10 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 02:39:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2Gjt3v6WMuEKxqztRh3BKAtlUXLJpoqEtfIBhayDxjBtd3e4R34/F8q1EH5f5PucY9ZzrR8Qtf9py2M3L3oYeaPiQfwZXUaZWoxEHMqzDr29RiwE78CVnk71xKfDfexCZYRI3cQX8h6NRYxuqXeoAzyvRoFrJJMCkzL/x2sQ5JWw4c3UMhxLqBEV7wLmSj571Go8TKtdyInPaQE7YDa5nx9ku+3pg07PwQ9BL/p8seYazkm8i3rK5VGTZ7qFZkrcHCNWGLcqqZkEIozhihbkYry65biT7HB7e1z3qfwSE3VLhf8FsFtdeVUKJK5a6L6mpVirT4hoeho0lp0/hquYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ega75psc+www/N/4X9SeWzvpMj6DSBkW8cG7+SnifqM=;
 b=NPnEyK5F3n7Fz+rUpcLyIROflkfOkOcI213ZKx1jIhepBXoQ7kHhAhejshxzaFZrJDd/oQwpf2jLko97eRVyiooCZWXLvhGF4zsNbK8nWZ2YW5QIojj8dGfjqXlISVz9VKWXqXCxC09y3/GmNhrCQhHQM4R6MhUx5RqDpWidiuGOgeQQWRQBKzarllRGM5Wek0ngn6FBWTvMqGIB2TX4gp53mwhnzNAlja+9KJjVOrdTVDYOd8Hky+A/1pTh69W4hhx8NMrxn/k+guDNV5yRd8UO9kr1d9bdVUVhFiZRRy28uJsn2JTCS1VlVlIFKFr5SjuuM1WxGZ2lbKsGIFFqfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.18; Wed, 16 Nov 2022 10:39:06 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72%8]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 10:39:06 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next v10] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY9HSTpdS/oIv6QES5OlkQC8T6Kq44UIgAgAkVsMA=
Date: Wed, 16 Nov 2022 10:39:05 +0000
Message-ID: <DM6PR11MB465705E49A5FE5CB2C95D2D09B079@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20221109194759.509889-1-arkadiusz.kubalewski@intel.com>
 <20221110155432.3533118-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221110155432.3533118-1-alexandr.lobakin@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|MW3PR11MB4698:EE_
x-ms-office365-filtering-correlation-id: 367c85ac-2a15-4284-4ad5-08dac7bec946
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oZg15u5wrVVNEWR4U3VSjoQl0uq08qrvI6zlg+YfmXtmNYS5xSxYDPlXZQx37RtOy+xhOnKUXGx0SAvdmiwLeym1TYG4ve1AZW52SvFlb3OHkzBiu0u5g+h8mY+qsnD/Xn/Hn5r28lCO43df+m/GV4aFsYB/iX7e4FCjcb1Pq5brbh6jY5Gi07WAcsfWO0j+mZhfCYG7ObKDgLQGDcHICgKFdYQiOG5ZecEKy1WtiExf27MQl1aDUK8It0kzfbrz7+hhSwDv9ynDUHqiI8gGHUC79vYZY6LCSY527SoxFMmtI/vghBqYwbXRHO74kzv0+tzwSH5iWJMWXISedbJw/TxkHXuKnJXrvWXdsvdsWhn8N5mGq2UsYPapC0JJwLporE5Bx9fYWeLRsiWXJa83BsCFP683AQGZZLk4jdN2SHVuqxdScfoN1YoN2C0wklnOg6MBdSQCzVPt520EEMD4XRVoZ/SYCaJHxl6lEiRvEpZFDYNHjP9n1IVwScBLCjjUmlvCnZmjmmVCOEDRvJ+g5TmvH+cayR5q76AfdVHgfXVmoIDReEmXcGJWEgPhDnmiFwqTp+q0MRVp7DaAyrnlMb7pkifjWjSW6XuGapkIoBnyM4nqM4DURKcccBW8/XmG2JRPu2qT1lM2sqUlRClm8ZNEBU9tcQu7zWHJ/hoXaYYQgOr0vG/UK8RBxVO2r6dFxhAgxoOA5VPEzY9496HLYJb6mhEc4SkgypgzPp3uANnYeOXm9mRPtdYYDGuORe8P8CHUKxTf85zqyTn/30sJ8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199015)(38100700002)(82960400001)(122000001)(33656002)(38070700005)(86362001)(55016003)(478600001)(6636002)(5660300002)(52536014)(8936002)(7696005)(107886003)(6862004)(71200400001)(6506007)(64756008)(4326008)(66556008)(8676002)(66476007)(76116006)(66446008)(316002)(66946007)(41300700001)(54906003)(186003)(83380400001)(2906002)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K7jN52+oLEVpTiSmUe1CdM7MQWJor4Ej0A2Af+0JKH0lKZsn4IurdYNgFTFB?=
 =?us-ascii?Q?eLGvOTG6jlNNoNosw5Ydgjrya7maAQ3rWvHur/cAWvaTD8gDMGAg9G4Hp0r4?=
 =?us-ascii?Q?DZmiFs9Ue1Hw5J+Z0Rj7vQD9xoVdG2SDpd1rONV63KrlUXLDY2q7XqDL+IYE?=
 =?us-ascii?Q?0IRO/680+pv8qOGUvPLVrwRPFldCus+R1kpvWN3lo1PMtbN3zG31MRqoqXAi?=
 =?us-ascii?Q?25Kn87bRvTd4AEWjdoXzRW5mYnqhLYZQpuPvDJq3D8llJfCKRhQ5Hp9JbCLR?=
 =?us-ascii?Q?CK76BAUB9cw4H7kd+iKpX6WSQSpQFQR4/fI2C1HxeA7pXqWYuhK7XyIvVtw+?=
 =?us-ascii?Q?tYVscb5oUCuJoc/FPMTLStfWs/ArNSNG0fmBVb3BmGAWU6ISP4oWJ6V1bjbH?=
 =?us-ascii?Q?FlYmpmgaQYTN7rhI8gLb38ii084iTP+Wc/zIMXxMssO4VxyAh6TSLC5roGdi?=
 =?us-ascii?Q?GVXr/mR2WMnCuxth1PGuZd7k8gyAqeAe+nZEZT6rNaiadBKdW7Kf09ux/cg3?=
 =?us-ascii?Q?DuIreKYHOQhSR5ad1/6oKZmb5vsvRUNN7iyVMXrUsUWWT94AtriMtF6sGTzX?=
 =?us-ascii?Q?Dz3zCSeYfFqF743lHik7+KRjnZhUHI3JhEG46AqcJY+N+gmoPWiiRykWFYmO?=
 =?us-ascii?Q?vW9xmO2a8NBirUorZEJYTdyipcQDwB3JMnifviPoWZUFT6VWs0CO+CMHR2KM?=
 =?us-ascii?Q?9USovqJyH+QLzq0JFN41vhyHWyhaLpIrQGi0Ql5kYHdEwAgU/rC6EotIuv/n?=
 =?us-ascii?Q?/uH3iTJQGBdDgzeLfFJ6gjnBdHZYrMNxuDg4V/egJ3TkzgaX3Bh/513GepZp?=
 =?us-ascii?Q?eTEwZdT6IzTWRIvWH3vA24XYUj23JreZEkR6Tc7w+y6WxE+Xm6VGJwc2FXNL?=
 =?us-ascii?Q?/Cpzymv/MupRW2y9M7as3wNussckPSvXEhNRofSYAxNEt1kkANms6cgiA8xO?=
 =?us-ascii?Q?6OsCLJWX9DgFG9iOO1EO0UBK7KS7JZ06UPMIDOUfQNcQZAoxVr0UGAGw5TOy?=
 =?us-ascii?Q?dtTF0YhGjBEIAS23Xta540FGp2clSUlt3f1CRXpA5nO9XiGHTMGHkjrT+Y0p?=
 =?us-ascii?Q?jYlRp8p/dLsbMcc2+f2G5qc/7VXjSW5fT0Nw2mrfnRcckQFzEPbGvS6+JZgy?=
 =?us-ascii?Q?ynsO6zNFYzyD+uIO+JG2bc48v+s45+q+Raume40Vz4Q1LTzKuxxVNf1ExLUX?=
 =?us-ascii?Q?sopVXnbEP5IRrkOKU8ioUj4lsz/w8JtejyFjIPedUyguTMwVi4ep5glCNvDG?=
 =?us-ascii?Q?qI/JgHX7T7Z2mNV1UOzRpnCrA1yNMi/reepTN4CDxoiWsJb2BN8JyQjYBci3?=
 =?us-ascii?Q?0kszza+AdX/4zXbgTXqyIPqzKWaTXBmZGxbDPeKKu59LCK0dqdJ9Q93SodlQ?=
 =?us-ascii?Q?1nuClMAJv9b5TL867CNjgvHJ8mxqhkz3oyvlXSABCgcrjaZB6DEC0j5NtIRN?=
 =?us-ascii?Q?v5HybJdHUG+5+kseV4jrKmopRwuMpk+9JzQFGW9rkuPX1w4AJ52wrUOdK7+m?=
 =?us-ascii?Q?DEho9n6wVtwLrKhLn8gCfC03MQyzvH/QWPDNR9AiVBK+WjXnVYEbPHnAyqig?=
 =?us-ascii?Q?CntCdlU+LTpd/kFAtOTGGANj5VO6wQFDy3Uhs+jOcwqS7tCgU4zLT+tI6YOp?=
 =?us-ascii?Q?dQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 367c85ac-2a15-4284-4ad5-08dac7bec946
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 10:39:06.0419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FtfdEWlHkzCxKhnQ7IkQP4OVnrzWaX11bDJl8z/LWMyOATrEAdIi6IV/B12ZeV0mG+fKidokovKRVI12WyfCoPHNOO/WcD2GCFCyNnd8PW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668595153; x=1700131153;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDLOS0nyELQjNGVVeHuZLUhCMuRn65txp2/H0W6R3Mw=;
 b=YqNVCcusTanxGuTt+s5IZFemxCAxRtPskX8QP826xSFk+VKxfaufN7Rc
 V0fkh0D4Qsnn1CUA56dbnV3xFNv187HPSwSXUxqrxfu/yJ+wWubuE7X7D
 Xd+kglD0/k67crjA1LaNd4FKPfXpfJTXEKB+nQgk9wEe7qXfVA9cgHHPw
 cdkEIr093hTt24aCOej7JlmSK+5yAfzFOKdo1u+d3U3rhOBT3BLZnMj4M
 /j9OyKECs80peyofL9nvhVJoBDZ704QRAa+fZKxamvKlk8TRjE9JYTXQh
 7NtAzp1Ye/YyFGAxNGNNL1aYLiKSoCu5eGAsR9bVcQB5TttcnhjXKNBal
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YqNVCcus
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v10] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
>Sent: Thursday, November 10, 2022 4:55 PM
>To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
>Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
>lan@lists.osuosl.org; Kolacinski, Karol <karol.kolacinski@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH next v10] ice: use GNSS subsystem
>instead of TTY
>
>From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Date: Wed,  9 Nov 2022 20:47:59 +0100
>
>> Previously support for GNSS was implemented as a TTY driver, it
>> allowed to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
>>
>> Use generic GNSS subsystem API instead of implementing own TTY driver.
>> The receiver is accessible on /dev/gnss<id>. In case of multiple
>> receivers in the OS, correct device can be found by enumerating either:
>> - /sys/class/net/<eth port>/device/gnss/
>> - /sys/class/gnss/gnss<id>/device/
>>
>> User expecting onboard GNSS receiver support is required to enable
>> CONFIG_GNSS=y/m in kernel config.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>
>[...]
>
>> @@ -50,16 +39,13 @@ struct gnss_write_buf {
>>   */
>>  struct gnss_serial {
>>  	struct ice_pf *back;
>> -	struct tty_struct *tty;
>> -	int open_count;
>> -	struct mutex gnss_mutex; /* protects GNSS serial structure */
>>  	struct kthread_worker *kworker;
>>  	struct kthread_delayed_work read_work;
>>  	struct kthread_work write_work;
>>  	struct list_head queue;
>>  };
>>
>> -#if IS_ENABLED(CONFIG_TTY)
>> +#if IS_ENABLED(CONFIG_GNSS)
>
>Ooof, sorry for missing that during the previous reviews. This also needs
>to be IS_ENABLED(CONFIG_ICE_GNSS), otherwise it won't link when ICE = y and
>GNSS = m.
>
>>  void ice_gnss_init(struct ice_pf *pf);  void ice_gnss_exit(struct
>> ice_pf *pf);  bool ice_gnss_is_gps_present(struct ice_hw *hw); @@
>> -70,5 +56,5 @@ static inline bool ice_gnss_is_gps_present(struct
>> ice_hw *hw)  {
>>  	return false;
>>  }
>> -#endif /* IS_ENABLED(CONFIG_TTY) */
>> +#endif /* IS_ENABLED(CONFIG_GNSS) */
>
>(here as well)
>
>Other than that, feel free to add
>
>Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>
>to the next version. I'm no way an GNSS expert, but the rest is fine, good
>stuff, and diffstat looks very nice, too.

Fixed in v11, thanks!

BR,
Arkadiusz

>
>>  #endif /* _ICE_GNSS_H_ */
>> --
>> 2.34.3
>
>Thanks,
>Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
