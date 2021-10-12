Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7E6429AAB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 02:58:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFCEC401A1;
	Tue, 12 Oct 2021 00:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hRuPsuEQDRoE; Tue, 12 Oct 2021 00:58:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2356640109;
	Tue, 12 Oct 2021 00:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 321751BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22235608F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3YSWwnORyD9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 00:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E45A0608A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:58:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="226963332"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="226963332"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:58:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="460167023"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 11 Oct 2021 17:58:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 11 Oct 2021 17:58:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 11 Oct 2021 17:58:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 11 Oct 2021 17:58:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdNe0Xsk+jGrH4kx4ryPz7EqxGWPaMEu//LnW3qKZGqQlY9ea+G/wcyOdKvHBJxLVx2Hn/7tfG04si6g3OLdgICTAm0RLrxPdm70Wh/wr90CX0Npk27Gk3uj4oCMqa0cyOmDiGm6hRXS3x2Cl8pdSD5RtS9wsrWt1Pyvzjske2QJtM6xrOvtptlSc/c4NKqnvUSxtGY7qkrD3bpZF/ATvfUrpgPt8udk2/FRGEOnWo5amrqDvbRiDkuP+wpoMEi5XQA8ZWFoNtLs8xY959+fiYAVpoCWO5DF8Zf6eK7MnPIGCiBMAifaD8EzijcI/AhhqB9H1iT2LxAEZmZpdCsb6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEy/94rBkOtYFysaJyuXNVS4dJegqtgdVQfaGdbX7LA=;
 b=GSQQlCVaS1U9nWX8AyyKLuNm3q0OFzYQPNJgRakqB4sYCFtQ2vwwVcHUr9TIISviKtVrzfaGQ2LmjnoX0Ms32uH971Lgn12DCCsLXjI4W4TWIPYIm1/t3WRdJ68nSalWfNldGlIDbzMTiYIh1oj6pCT7KdQgE4koDc7VFKI9UdQIZTIGbSe+06I3e3mgyy6p6GOHCyHfoiY5UhrlOprmc9w/gOLN9oNCeeFIGuh/mVWpx7aM4ssIFL9W3LUu/i3VonhJVmvzx4cGMsUOkA9C3BAJhJTwOGzQdIXRRRbNly4SIuwUSbaG69ruQZ3nC8bA86rzovJkmRPe67I1sSJUBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mEy/94rBkOtYFysaJyuXNVS4dJegqtgdVQfaGdbX7LA=;
 b=BYyERV4XFiW4Tsl6o2F1GDyzAi9m+P0sTpsoKjaok/eyg+66xrVE4kEXL9C7O98QIiE3RleBT+3aHxMFHL5/AQ0MfdSFmRLxNbMp5YpDl8yGtUk0Q7cRcVrI573BVUQiLFbaluJWaHdz15cWQ+10uxrXqx8Zyf2OwWTH+S800Io=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR1101MB2127.namprd11.prod.outlook.com (2603:10b6:301:58::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Tue, 12 Oct
 2021 00:58:08 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::982e:c29c:fe8a:5273%6]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 00:58:08 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 9/9] ice: support
 crosstimestamping on E822 devices if supported
Thread-Index: AQHXvuqvMouAqsGJfkax9kBzpx0LPKvOgKcAgAAJoPA=
Date: Tue, 12 Oct 2021 00:58:08 +0000
Message-ID: <CO1PR11MB5089AC81D4843D4F7D50A00FD6B69@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20211011215433.1525457-1-jacob.e.keller@intel.com>
 <20211011215433.1525457-10-jacob.e.keller@intel.com>
 <87mtnfhz21.fsf@linux.intel.com>
In-Reply-To: <87mtnfhz21.fsf@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36f9b39b-2654-41ec-d0bc-08d98d1b5b80
x-ms-traffictypediagnostic: MWHPR1101MB2127:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB21272C25EF6C5183758C4398D6B69@MWHPR1101MB2127.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8XUDRbRMXeUP3By8HUok98fTWi2mnEQDSuvgUbQupXhoQ2sDFqAUmUtm5P9X6YO0H7IY/NUkgQ/3rJPi3nPgACmQHukFO4OzYvOuS2sP5pach26D9t3B8ZTLC+cWSmCF/1M1CY84dnghw9hkLO0f9HR8doH0VtVziVjwRU+A2bXgGDwDAR0yfoPPXHSlnXJzd3/vd9auM8520WCG7Z2mlwdswbtLJHSLdwEYUWwvZw0AyFGxh3ieaoTo98Oqx2l+a2pfGjkN4ofiXh5ewJyLqCZBjdvD4TFO6eaC47aOplRGUl2gy5xBAB42vgFmEVQWSozV4IRuyfTdHK/JIokDPrhmKERe9O6i3qEZ8WUCCWUuuCNCUPTwzKZrQpMlM4Xy/5DDfoPPMHcooK0r/D4tTPujODoSmObnh0ji/2w8fJOWu/NTMmG8FzMsG4UBbzrySuYiTlRBpBBC7u+7NMwoz48VH05ulWDIjM922QKtcX9ug6TMirj+lTrs391japGpmZvUiKK9M+LYSnnFegCfNaxwbu3UndvdW5sBt4KLd6YyKMnodF7WXwT7pRoHZn/U3ydAga2U8PbERt9+Ezr0iax/eKsttQKT4DzJL3Ac5fheYhy2ANKCymBUFVuyc+yjcyHI7THK7qCcbEaz9hjOzPzmr4rVBbzaZUqWfcoAq2QYNLcsCMZ7SPuKmSl1fSr7ws9sRRzcf8NHKJhKohEdTw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(6506007)(8936002)(33656002)(5660300002)(316002)(2906002)(52536014)(110136005)(8676002)(83380400001)(186003)(53546011)(508600001)(7696005)(38070700005)(71200400001)(86362001)(66446008)(66556008)(76116006)(66946007)(64756008)(66476007)(55016002)(9686003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X7CMV8ZqJLesPYKHtorZnQ3hmKtp/PkM5dquwF93XzzUS6vT9skrfi2irbfh?=
 =?us-ascii?Q?NbErghKTLAWlEsLSg0NFKhVxhbl7sE23APuyjpxQQaeX1SUpFcmim3gH4sSh?=
 =?us-ascii?Q?aZzXN5ZQ2Yalp60E8+ibI521U1MQkjCQqyRLHMQ3gMxdDPUvACjLw4dzYkI4?=
 =?us-ascii?Q?ZeWVKnPkIyYKZ+1ZEKUmHfn3r2laat87byONhAPF4QnEa/4eLcMGn7NflKFI?=
 =?us-ascii?Q?2M3z5if7pd54ruJRwzpt9tQ1q9u22a2FRq/LRpfWfSUdjG3yDtDs2keOnSEf?=
 =?us-ascii?Q?YemPCWWRohAWJi6JkPUB/RnST8KB2gTnB5X7A3Sx+EYKt/3HbLAv8Y0zZ5mI?=
 =?us-ascii?Q?IfPDVlhaMXbv6JNKS+mafK11b8VHJ1Afl9yCr4OyG/PsYggG6w7aM64jE2S6?=
 =?us-ascii?Q?TweBfqpVcHaltcfKJntn5C55qm89Zygu26KpOkJjsMH0CHBk0y9my6FfeE/F?=
 =?us-ascii?Q?lBPYTkAFIhMMhGnQHXq234c8+Wucr3H2cPixj/LTlKYZ4GuNOfN9qtO0PvsD?=
 =?us-ascii?Q?g6un1F8JChnw7IfOEhC3iJYkUAmIgjxtktT9psNnZpFUbqGHxAMTac5UZTwX?=
 =?us-ascii?Q?W18PWOaIJ7DrFxx/qe9JQGnxlO5p8r+TshwbFIY/BYlyjhO7qwwNh1q57Y8i?=
 =?us-ascii?Q?5f7dWlxKH4EHj6HjlG78C85vheVGd/FrovDxm0cUTNaWzH5aowrtdbxl19Ks?=
 =?us-ascii?Q?ketFR/5ZbXEfXX7ywPN2L+x/Qpr9mMGs3BjewvFCEfEEKxWf4WrOWI6rB0Gk?=
 =?us-ascii?Q?p7HEYEbDuPSuoTu2KYZT3gxIbBxWr/kYRJDe6VpL3HxEEHu9Bt5feSFPj6sO?=
 =?us-ascii?Q?e4gLqj6J4+M9xfrSNqy/82v2cdmFv3U4TjQzLlUGGAiq+J3BS9Ow8nujkQEW?=
 =?us-ascii?Q?jrhL8YiOaOmataUDrII/U5+dfq8iKiIvT3ZrsT0dvFoTdDn0ubiyVyooAnXC?=
 =?us-ascii?Q?qs/g2DzK7uULu5F4ka0Yu2wO6MgqBot2BgKk6DK6SV/aQEbXyOHbxYup0I9l?=
 =?us-ascii?Q?sgZg1y9Ve7VSJcPOXlqyv+lfoUQjBvQET+K/0s/zqQ9ILYvZq7Lpa1LtXxCS?=
 =?us-ascii?Q?c+bm4VOc1LSfzTxBucBUUwwjwORZvDg8+FwZsF5mwBhrMzMeoiCLGoonpTk3?=
 =?us-ascii?Q?jMhgXqPpGA8xcT4XnSaabFK9FOXWdn4HesrywTm/lz7x4GzKid4kr1e2zaKa?=
 =?us-ascii?Q?1/k1brua4Hb4+U2le+jraVLeYbUNevWKt+xv2JROORWIzjrEEHqUhfH8e5nV?=
 =?us-ascii?Q?pgGDHUfmoER/I6uCgaWcPHjm/eZH/8YABsn6xZg2vG/I9mL0LK4HWRy/PAHf?=
 =?us-ascii?Q?Lx4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36f9b39b-2654-41ec-d0bc-08d98d1b5b80
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2021 00:58:08.6805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rPYanP0s4/XVv2SID+mvRBDm2hlxkK+Q0lvXXiZ8EZt+Ri4y8F/wFLYecTqr638VPuBGye+svcWaqAS3Hz+6xNny1u9L9IGhj3jRJU2mO4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 9/9] ice: support
 crosstimestamping on E822 devices if supported
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
> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> Sent: Monday, October 11, 2021 5:23 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-wired-
> lan@lists.osuosl.org>
> Subject: Re: [Intel-wired-lan] [net-next PATCH 9/9] ice: support
> crosstimestamping on E822 devices if supported
> 
> Jacob Keller <jacob.e.keller@intel.com> writes:
> 
> > E822 devices on supported platforms can generate a cross timestamp
> > between the platform ART and the device time. This process allows for
> > very precise measurement of the difference between the PTP hardware
> > clock and the platform time.
> >
> > This is only supported if we know the TSC frequency relative to ART, so
> > we do not enable this unless the boot CPU has a known TSC frequency (as
> > required by convert_art_ns_to_tsc).
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > ---
> >  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 ++
> >  drivers/net/ethernet/intel/ice/ice_ptp.c      | 113 ++++++++++++++++++
> >  2 files changed, 121 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > index 7bff0450b76c..d16738a3d3a7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> > @@ -441,6 +441,10 @@
> >  #define GLV_UPRCL(_i)				(0x003B2000 + ((_i) * 8))
> >  #define GLV_UPTCL(_i)				(0x0030A000 + ((_i) * 8))
> >  #define PRTRPB_RDPC				0x000AC260
> > +#define GLHH_ART_CTL				0x000A41D4
> > +#define GLHH_ART_CTL_ACTIVE_M			BIT(0)
> > +#define GLHH_ART_TIME_H				0x000A41D8
> > +#define GLHH_ART_TIME_L				0x000A41DC
> >  #define GLTSYN_AUX_IN_0(_i)			(0x000889D8 + ((_i) * 4))
> >  #define GLTSYN_AUX_IN_0_INT_ENA_M		BIT(4)
> >  #define GLTSYN_AUX_OUT_0(_i)			(0x00088998 + ((_i) * 4))
> > @@ -453,6 +457,8 @@
> >  #define GLTSYN_ENA_TSYN_ENA_M			BIT(0)
> >  #define GLTSYN_EVNT_H_0(_i)			(0x00088970 + ((_i) * 4))
> >  #define GLTSYN_EVNT_L_0(_i)			(0x00088968 + ((_i) * 4))
> > +#define GLTSYN_HHTIME_H(_i)			(0x00088900 + ((_i) * 4))
> > +#define GLTSYN_HHTIME_L(_i)			(0x000888F8 + ((_i) * 4))
> >  #define GLTSYN_INCVAL_H(_i)			(0x00088920 + ((_i) * 4))
> >  #define GLTSYN_INCVAL_L(_i)			(0x00088918 + ((_i) * 4))
> >  #define GLTSYN_SHADJ_H(_i)			(0x00088910 + ((_i) * 4))
> > @@ -469,6 +475,8 @@
> >  #define GLTSYN_TGT_L_0(_i)			(0x00088928 + ((_i) * 4))
> >  #define GLTSYN_TIME_H(_i)			(0x000888D8 + ((_i) * 4))
> >  #define GLTSYN_TIME_L(_i)			(0x000888D0 + ((_i) * 4))
> > +#define PFHH_SEM				0x000A4200 /* Reset Source: PFR
> */
> > +#define PFHH_SEM_BUSY_M				BIT(0)
> >  #define PFTSYN_SEM				0x00088880
> >  #define PFTSYN_SEM_BUSY_M			BIT(0)
> >  #define VSIQF_FD_CNT(_VSI)			(0x00464000 + ((_VSI) * 4))
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index 047914111389..ea853a744376 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -1598,6 +1598,99 @@ static int ice_ptp_adjtime(struct ptp_clock_info
> *info, s64 delta)
> >  	return 0;
> >  }
> >
> > +/**
> > + * ice_ptp_get_syncdevicetime - Get the cross time stamp info
> > + * @device: Current device time
> > + * @system: System counter value read synchronously with device time
> > + * @ctx: Context provided by timekeeping code
> > + *
> > + * Read device and system (ART) clock simultaneously and return the
> corrected
> > + * clock values in ns.
> > + */
> > +static int
> > +ice_ptp_get_syncdevicetime(ktime_t *device,
> > +			   struct system_counterval_t *system,
> > +			   void *ctx)
> > +{
> > +	struct ice_pf *pf = (struct ice_pf *)ctx;
> > +	struct ice_hw *hw = &pf->hw;
> > +	u32 hh_lock, hh_art_ctl;
> > +	int i;
> > +
> > +	/* Get the HW lock */
> > +	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
> > +	if (hh_lock & PFHH_SEM_BUSY_M) {
> > +		dev_err(ice_pf_to_dev(pf), "PTP failed to get hh lock\n");
> > +		return -EFAULT;
> > +	}
> > +
> > +	/* Start the ART and device clock sync sequence */
> > +	hh_art_ctl = rd32(hw, GLHH_ART_CTL);
> > +	hh_art_ctl = hh_art_ctl | GLHH_ART_CTL_ACTIVE_M;
> > +	wr32(hw, GLHH_ART_CTL, hh_art_ctl);
> > +
> > +#define MAX_HH_LOCK_TRIES 100
> > +
> > +	for (i = 0; i < MAX_HH_LOCK_TRIES; i++) {
> > +		/* Wait for sync to complete */
> > +		hh_art_ctl = rd32(hw, GLHH_ART_CTL);
> > +		if (hh_art_ctl & GLHH_ART_CTL_ACTIVE_M) {
> > +			udelay(1);
> > +			continue;
> > +		} else {
> > +			u32 hh_ts_lo, hh_ts_hi, tmr_idx;
> > +			u64 hh_ts;
> > +
> > +			tmr_idx = hw->func_caps.ts_func_info.tmr_index_assoc;
> > +			/* Read ART time */
> > +			hh_ts_lo = rd32(hw, GLHH_ART_TIME_L);
> > +			hh_ts_hi = rd32(hw, GLHH_ART_TIME_H);
> > +			hh_ts = ((u64)hh_ts_hi << 32) | hh_ts_lo;
> > +			*system = convert_art_ns_to_tsc(hh_ts);
> 
> Note that convert_art_ns_to_tsc() is only defined for x86, will not
> compile for others.
> 
> For igc, I wrote a very simple wrapper, if you have better suggestions I
> also would like to hear :-)
> 

I must have accidentally grabbed an out-of-date version of the series. This should have included the ICE_HWTS config option which disables this support except for X86

I'll resend with the fixed patch and double check all of the other fixes from previous versions made it in as well..

Thanks,
Jake


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
