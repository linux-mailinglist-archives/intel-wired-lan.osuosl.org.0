Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F0C36CA8D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Mar 2023 17:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2D5361096;
	Mon, 27 Mar 2023 15:20:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2D5361096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679930453;
	bh=VWwdaxfhw5PyQCR78tg+7Dt9VHS1Pms6/oVfizQSoJw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nI1ZuX61BZVzkp8nHtjIcYNYj4jASijdiGFf92Rh9GrehmdtxlivPgzMZpBdDUWSO
	 P6W5gCPGSDxs53QBMEqT1+pLugKccGTBIEPQBNACrDRelf/kvj/ZAscgovMn9sigoF
	 VbDq0JZwDCggvZiltTF4SvYf4mbnCPMeSX7SWBRiOm0Nx9FyuMqTiHOqw4pj+TSYUx
	 bgURTHuF+33WRO4pLK2ZlF+6KutIcIueetlEaZo/LwJtU/mrgBNTi28WNnpyPcujfB
	 EOALiwlYz3KqOw0OTVwgR4ST/tagw058hPPW6YMx97PTrUVJJBPt9DLu9v7lHB24fL
	 Ys9AkErHsPrBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8F48oA6Zo-rc; Mon, 27 Mar 2023 15:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3ED861085;
	Mon, 27 Mar 2023 15:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3ED861085
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 811801BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 11:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58F8D81C40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 11:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 58F8D81C40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6slw4ugxGwTd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Mar 2023 11:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8E6A81B01
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8E6A81B01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 11:16:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367984349"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367984349"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="857616349"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="857616349"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 27 Mar 2023 04:16:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:16:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:16:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:16:33 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7py1TPgdlZBshIvGjfEXy8YRTHoc7CTkoGq5iEgjYpC9Vnlp3kFIje6Cwcbl9gw7P7pzzCnxFfEjmyq0Y+He/cpTC2E3AnUMzG+/GKoIk9Z/xQeFP5XFSWicLl8OR43FyMREdOnJM6TUcO7xXEEgiPJiTR0Zr9hf0AqBzWiT2rMSqD0BTz2lLluTki5AVUutoQU4rmv3WSaiuEfI62tbDCq27GV93NMFRCqWOBEZ9G9QOMU5hNNTV0ns3mQ28XFUu6ewTViHwJhP+TTyGM4y1AOHA5nW22W/vkVWp7kHQhfpNmzTDo+UumWS9O5n5YYlUXiOiI6TWqK+Is/1KMGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2PSSVREUbb6hRV8b6OGLw9TLIRZA5ULeIfxQCk2xXH8=;
 b=hIMZ1SscZrHdMTLTj1ROIas+x6XGN8YCFphoMgNwk225Wf8KJY4zzpEjBW9gyUgN3oRG1ErbRppZBDlFtlvb3AxxIEq8YO62EwB7u4afUgymw2MWz6KsD2af0kKPzXRLrX5xZrGZDrmq6G1q6l+YECdOUUMOiYryXAsgi9mYHwLlSEzt9Ly3dwcNQOivrxhP/PQFWC2Mqp1NHBomK3ezdkv/qdmxqpowNJf6CKQvgOEzt1pC6YX74tVqVRMo+hXndtZ2Y5Guk+ZV1iEyMnYTkFAQaE+1qaiXY2wYKcqmFZqBz9kI+vcKJ47r9i3nXYIzirF7f8Ch4vnBkDVeXSuftg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by BL3PR11MB6364.namprd11.prod.outlook.com (2603:10b6:208:3b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.31; Mon, 27 Mar
 2023 11:16:29 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::464f:1bfb:43d4:416a%9]) with mapi id 15.20.6222.028; Mon, 27 Mar 2023
 11:16:29 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: fix registers dump after run
 ethtool adapter self test
Thread-Index: AQHZXLzfOpnVD8vmzUWUoyboEcqkjq8OgBiw
Date: Mon, 27 Mar 2023 11:16:29 +0000
Message-ID: <BN9PR11MB53548380B4D354B21D99E9F2808B9@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230322124820.128431-1-radoslawx.tyl@intel.com>
In-Reply-To: <20230322124820.128431-1-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|BL3PR11MB6364:EE_
x-ms-office365-filtering-correlation-id: dfbe0a8c-7d45-48bc-3659-08db2eb4b68f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1FjK0Msqd7ZyemxeqEnkg6owpWdcgVMrjBhDX31pt0aB8Gek0MryezggamSZ6BM/5SxP33mvKxl9eO648kUxwvE77EBKeWV0gAHL4mSfYi6+9bBKZCWRnjM6HUgqIXjLlXa0c0GY3iWHv765X7nJ+wC0Glkwi+8DrcXxesOcp77IeddR4mov8BcNNHN5VaO+AsfQ5m5iGtm5vjQ+sOgXFyuBs5rdJ2+Z9h7Pwffvlipe2uy0xTsO53jnv8WKPG2rU62BXPkKDWqaDdFcC9D4r03VxLVpS7mm6OTQbFz+mILYEpy0Ucv3NA3ITabbBj5nNUIQsGDdpOjQYSNAmcj/qvOs1lk1gxFe5wvh95l525LXmlmONB+AfNJRB1l42/2frD/jKlMsKyfsvSyA/5Fqja+ff0cogPpM/U0uMyXJ7AerXr0mkROdQDHXp6j2MBAAXtQNqwgk7GsJCp538SUB023wwdCW6LBI6nAVTEIHX5O4BgSK8GRgIV3ceKoZpJFitx0yajlC46pcr8yE96TKcAEEPkGrp82bqHm4/IIvQXh6HQl28hTcUNlibNISJQ/ZuGuFYdEOuvFR9eo1laMbHAHrcx2NI/pOBttwC5ZhmY6S1Zl/fD7aqB5j6DF1lEnQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199021)(38070700005)(55016003)(38100700002)(33656002)(86362001)(2906002)(478600001)(83380400001)(9686003)(6506007)(7696005)(71200400001)(53546011)(110136005)(8676002)(76116006)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(82960400001)(52536014)(26005)(186003)(5660300002)(122000001)(8936002)(41300700001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FAhc4imqdzP7ev16wYWoXFuxJkfahTB+Sv/7M2X4Isw/lmf/0KWenLTsOMSl?=
 =?us-ascii?Q?w4sJjwPkeZxRrZ9N2AR292HxilGWOyywmSZP8Eu6LJTJ1afkifZKnOs2Si+v?=
 =?us-ascii?Q?bqA9Fz1VYIkKy77Vnsob+ecBDwezcCc/H2sjJxyIk0KzRH3DkbO7jXkJiXAr?=
 =?us-ascii?Q?I0w4PnRttbA3ASXB+5GcZ67ffuOJAAUFR5CnIPcSfMZj0K6uCpfK9orTyRTw?=
 =?us-ascii?Q?QqL9GtDHhKziyZ0akGlQixCPiTxhTbx7UiDR1SnOenZ+7FaSCSi8UWCRIhzn?=
 =?us-ascii?Q?VyENU4wGaXBuyN0ZlPCLdLe4B5avCyoACpHKLFy1ayDcIvjpIiiS/XVVHPnU?=
 =?us-ascii?Q?cuuOZX+P9POeh3HQqIJGxYJ7EzQnkDdwaoTTLEiUiOk7UQvuYNX4NKPB0pry?=
 =?us-ascii?Q?IW7vWVdpvSwq8VOQvrrxvkEs/Rnwe8USjvyz8q5LgvYyrCNZyAlXA2/5eYZL?=
 =?us-ascii?Q?PCTVHkyfesqE/vT6ya7azEJVDmHs/xeIMYdVL67ybOY9JFdKp2AWrBdHlgeD?=
 =?us-ascii?Q?xLqQuve61GsEJ5iX9hsDbDrLCW8ezEOkjkrjb5xh2Cbm8ycG5tdcXvB6O7pR?=
 =?us-ascii?Q?XWmZvog+ksosY3mnKg9KZ/3dJGXdNLUOpf0AMFq427Yn7AyuEYdI1/NPT4QO?=
 =?us-ascii?Q?BjtVfbL70TBA7YiyzkX1bNhtvS1H44P4E6efeLg3J5USVd31Xnfht9/MsWgB?=
 =?us-ascii?Q?ClQw5gJwMdZEI+tXJwjTeTYPv8nFLrnQw4J+LBOv7DYk5l72RttiURHdzCWt?=
 =?us-ascii?Q?SOQ4Q/eIg0m59nCU/GLczr3mYi8/523EIRoCZAsxIxtxc5zN8PjZHAlCJWQZ?=
 =?us-ascii?Q?OrOXFIdlD7m7LnGilgMUZTAbbrqJcsHhqhQ7hVeBfVc6gETjptyq6jsrvhPM?=
 =?us-ascii?Q?jBE3S+rBxULgWV9MWkn49VrkZd+4LVXlsJuYdiw4TuuBkwY6Fyore49dLjWi?=
 =?us-ascii?Q?Vio5/awsBHvmnc9HfyHrQSLn7fU9EnA35P7bk6IOobt3RO3G0cAfcXML8jJD?=
 =?us-ascii?Q?pQhX2pC/4M3Ta3dZKrmt4ADWlaprZ6eaLaiomtYJvr7gjQmTiWIl6Hi1LwF/?=
 =?us-ascii?Q?HGKzTUgXN9HwL2N6Ct64eMZxPA+vPRSWSyAXpykLdmVdjrBAJc7/BagBkOoM?=
 =?us-ascii?Q?+2JGRo8uJnraVn6/VbCPkkfyONJT163+oRWQ/8z1Cf1QD7uxrVvK8XDwhpKf?=
 =?us-ascii?Q?zqWVAZ4JOtfgsmYsS/SSHTGF46K1k6ZAWQi2ZWG9b/N4J5L/LrHUBpUzJqjK?=
 =?us-ascii?Q?bm2NO8krfA6VIIJ/qFkIv1Hd2/zgdfvPtqTAqf7m5iX9pYroTCVJo7MMmTj0?=
 =?us-ascii?Q?xcqei1d2znxs7Hz7MyjQRXrTy1LZZulP1sGwT5rpTNh80cb2uJ7aH38rq2/2?=
 =?us-ascii?Q?Sa2uxbq1lJbg1M6pMF8sDgmQo4cYrP9KCjyo9STEQyh38vePSVJT/ldsnIqR?=
 =?us-ascii?Q?6f8kt0bhPVww94WNUW2s4g7WrYGNJeVPJ3JRTGhQ7d9UwSpCynAN/FfS9wou?=
 =?us-ascii?Q?q63Nbws3lvfcC8ULtZpsUwKVQ0QQNhCpsBLjJhFK/ahjqK9SNHGLAXzOxR1B?=
 =?us-ascii?Q?riEk7xYqup/yl3722VEWk9/UIc4SVZO0WhN5fqMF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbe0a8c-7d45-48bc-3659-08db2eb4b68f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:16:29.4290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8tNI8ZbFPXpGE6Qp9rgoSLNs6ypunfnqI00G3PEFjB8LAgcx2LJXxQp/PsBlqkaJ90Ebf9l146/dSCJeFP7QAM26H3QWGkW9Nrk4aKVuqrc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6364
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 27 Mar 2023 15:20:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679915800; x=1711451800;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NRqAN1EZBYZGkkb2esv0GNr6r25PHeXGHfHpK9RLJuY=;
 b=FwZmrseoY5vzfd8I7pDxjS/ozCNLesOHHGtlzRN+MOyt4o2472Zi2S6o
 iYZixL80si9Sy6Dis84G2G8EurBsVuuZi961Z9bTUxW+6A+X9VoVtj0z5
 /7ZPKTf7bmR/wH8zvPwrEZrBwB3OjISlCchR+NB6wJmjGPkN8lpCpialf
 8kNWJx4Ab+lfiryXvlAa/FMLI31G97uwJA8PgzdfyBzMedtnxDNPXJ3fe
 e5caBsgQMlLiRXabBmTPCJieIR20BU45yi8dM/CEL0X/XnJpAVHZxc47b
 Kh5bDoe6AGhME6AnhabhbB7Yqb5UbvwoedLcNLhjtxlGodjZ1meMcuVPJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FwZmrseo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix registers dump after
 run ethtool adapter self test
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tyl, RadoslawX
> Sent: Wednesday, March 22, 2023 6:18 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: fix registers dump after run ethtool adapter self test
>
> Fix invalid registers dump from ethtool -d ethX after adapter self test by ethtool -t ethY. It causes invalid data display.
>
> The problem was caused by overwriting i40e_reg_list[].elements which is common for ethtool self test and dump.
>
> Fixes: 22dd9ae8afcc ("i40e: Rework register diagnostic")
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_diag.c | 11 ++++++-----  drivers/net/ethernet/intel/i40e/i40e_diag.h |  2 +-
>  2 files changed, 7 insertions(+), 6 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
