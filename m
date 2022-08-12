Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D0A590BF9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 08:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2D69833DB;
	Fri, 12 Aug 2022 06:27:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2D69833DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660285638;
	bh=iNLzG/O5SQds5Y8sggcVgf9h/q9A0KgkPNTQS1+I1Q8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IB6AgO8Yf/roNTHyJvgOQzeEKtnWbYRWeuc2XNGLQNLubS3TX0wncG3CztLuo/U8J
	 FcLYH2RoKRAT3fOPvXyfJD1I0hDiFeco8xNM3wUXkv3oYbREHC54ujWHJnkP0szI6M
	 cOcA0FNmEhMjmgdZVZlsz/bsRGcEBUzTO/0v385VW63Z/N6KuCAxWTZcfqtSAIMy6L
	 1WGZHZipKgREOSgW7XXLqqNNhYmgBsEHmB+ycvW/d64vTIFV5uAQ13LDKJ7u+JKxsQ
	 t5Q/9fD/UuO45DDGSL55pDay+LkHn2CA72SiI56kLmc4i1egJG0UMwv8Rpagjfrwxn
	 Pixb6w3UeOpFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtvorIqQ_lEG; Fri, 12 Aug 2022 06:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C63C083276;
	Fri, 12 Aug 2022 06:27:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C63C083276
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95FAA1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FBF240643
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FBF240643
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTb2wl6jdBfP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 06:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B59AC4017A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B59AC4017A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 06:27:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278483731"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="278483731"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665703963"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 23:27:05 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 23:27:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 23:27:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 23:27:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RObQRz8B6B+nwIii16nSAXJt0WPhB4h+ZCJrlFxxJn8igmtaNrDrylCwueJI9mT8R0xYaJEGPPb0zidRWCJpa+uQipID5z1+FWiCA6cYFYUat5UozhjSAPyTJGcIbTrPNC4/zDz2E0yi63RahaINq577Le82UIo2czSq+FfM3eoTCR8vU31CH/MnN6q+WxloFEYwN9SHtCgmClFr7oM346L3ksPjQLy+Dgs8b97efLmIfCYAXgObrhsaGt9bu+ijKj0J4R4dbPaMMeLLHsl9+gY3/tFL0GZ3nrRP2943DRlBBnMeaWMyYPTTSSflMVp3qcZ9lnakJ6oDyCsRG8F+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QukAMudvfwys4FGogXk+iqizvebGdaxI8BM+VeTacuM=;
 b=DkAs3C5JryfDfI5pa3fDf+DsqmRP1O4IbrT4vVxQxyvnnIEtNBsH9oOzGAryUAHZwt8DdakYY7MNwd42wEjjb2Gy5Los3gIReilQUworF4UIPV3CX225Fok1cFz/Hfc0841Dteobg08E468bF4CxF+i3MTkwVf3ZVZx7/6/yMd1elz/tnWmSrgoumwlC82IwNeqsJ9Uz+/wGJOglyXxxFWMg8V8wkDg+8wWtyH8R/1PJHoVQFjjhQBFq2EVN6ThqUHO6VmwkEv6y71L848ZTtxwXUes3nlK+RnTosiSDdWRKjjDAzhbTWOyNKT5kLoLOCX/canwIbUzcdMo0SBsVVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by DM5PR11MB1497.namprd11.prod.outlook.com (2603:10b6:4:c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Fri, 12 Aug 2022 06:27:00 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 06:27:00 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Get DCBX config
 from LLDP MIB change event
Thread-Index: AQHYplq7in9LF9G45EWL7SDA/EGuBK2q2x7g
Date: Fri, 12 Aug 2022 06:27:00 +0000
Message-ID: <CO1PR11MB5028627861F1CD00E36BAABAA0679@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220802102618.31303-1-anatolii.gerasymenko@intel.com>
 <20220802102618.31303-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220802102618.31303-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a39add3-74af-4af9-bb11-08da7c2baa0f
x-ms-traffictypediagnostic: DM5PR11MB1497:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i3LPudLXKOWoHsH4XwfKeJQjz+JeTcy+/Sk9qqCZNGG6rVj3I0BrN+wxRa+zglYyp+qMRFmXdAOvRYHOvtm+kppjcRkHgWFW9Yxv86EeFCq8hGGMetpUG5Y38G0Kc3yTf5fhxTX1qGqIL3+PrQg3N3zAHzVnTGDGiRKi0IHi8CKGnYIxvGgAEtgIUDyGQm7fxvC3kuNEdtYmuNUQrtxKa52vQYssouRwqCYSsyu2vIDKTnenbj6oOku8EkEKmDnxM/hxWD1+X5BV5rmmUm7WNMKiD0mG7m4ki9SoBq7SenUvpIyvgw6gUM6VwBcP99oCNzJlA+EEFU6kcH9juqy7I/psydAguCn+sQ0R0bgWPz0VVf/Qm4D4JoSbkIdMAweXSJDkYdO5YaGMVZvd1Dwd837zas39OzPjtx7L59JC+NuwauRcDWla13P//+a9zOVNbkKLhEi0uef4Vi7LsVajRwpMICdICoHZT1yBnFjTT9hkDb/wNl5n59cifehDvwLOEnYPOagEn1xBTn2940tBGqUoyL8sm2vxClQhj9qJz2LqCI4A1bbqrmFD5jUiw59/15yxxwWEJD+QqS5h40Jycovc5Z/CLX9IqMXGHVGgjN9JUC/l88qjupGd+J79XR875Ydzc/Jn1UFHTVBH8oR8pnWSlbzPpwjxU3l05HcFuYzYbYFLxo3ZjaLJ+gdvBNt45OrD5UodQfYNn3hLifxsOc5ToJdVqt447TrJKH7cRmrcGqmJsRD0l6yOA40+XnukSnDA3AWLb3uy3msDfP27yDNnbOSM1hkmOK3BxJJbOzyg9KxJfkzV2S0o2SV8zDtt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(39860400002)(376002)(396003)(366004)(5660300002)(8936002)(4744005)(4326008)(66476007)(66946007)(8676002)(64756008)(66446008)(66556008)(76116006)(55016003)(38070700005)(71200400001)(54906003)(110136005)(316002)(2906002)(82960400001)(7696005)(9686003)(53546011)(41300700001)(6506007)(26005)(478600001)(107886003)(186003)(52536014)(33656002)(38100700002)(83380400001)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z0qHs4ImY3b2URixmmGWfgrjRk+oUb65Ll0wq2JqNg8k7IoS3WXdT22yOlBw?=
 =?us-ascii?Q?IkdaZJJuwJjtQvR4Y1RUpnDYLyvK+WuHRc+N2YNSHwbI4p/4uIBY4GNCtG4E?=
 =?us-ascii?Q?Zsy4gp4rLeLQtjKLLWvGB5T2wF7bldJ3ejKDfqYOEQdk+Nssg+/yAxJfFwuC?=
 =?us-ascii?Q?o2caVusKaIsB6RN3tERHyWuSTg7K5pe8iD0D7rJFKRdR/kS8zysUZfh3zSrc?=
 =?us-ascii?Q?Rh4+hRvUfciHoGnQg6uSMAVE+Kd/410XBVHsluHRklW1b85pOrlELOiQRR/s?=
 =?us-ascii?Q?LxC7zW4+nn3ACJ0SRVnl621mXLbSmCBGci2NZzTq1+OY0B4n0UN6kVRKLaoi?=
 =?us-ascii?Q?NYozSTNn8XS40i4jrAQMseeW6086LTf1BMCj6QIeVAhGMddUnSBL0/X3jk7c?=
 =?us-ascii?Q?JADZ6mS1N00AoH3+C61YXnwurDsWqvRol5AG05puq0eRdirsjTaT6got2Afa?=
 =?us-ascii?Q?DK5tUPoYKEhonI3RhNA669oLJXMW/fCVtVoHsbq0xlzi6Hsco/IJHigiUXBu?=
 =?us-ascii?Q?+Eib8ncrVlPvwCdHw7X/x295/FbH+q7gg2rewPAu/zTdUERJ0I+ogd7Dv1Jg?=
 =?us-ascii?Q?Pr7xzccPsnzaf71+OmvKchDbBAC5GZPOx6IxsM2HVpcOjFx9NHq4ra0V/Z4n?=
 =?us-ascii?Q?9oG/aYqOHXD5tMDWqPGJKoBcYAgeqw86xJuPS06PE3gMeS2xg0fbHBRPh8nj?=
 =?us-ascii?Q?sR4uZM7/khdFEZPtRC97xqe4959TUQP4YCXv+tz9iRUtzpC6f0T7269PHJtO?=
 =?us-ascii?Q?CXKC8hnjDK9sGqYLt/hCeAuaPUTjesEV3YGbQGpKn+lZP3ra2mmt+geoU/bD?=
 =?us-ascii?Q?EpF3BiKaMD3O3+l8HUL3kQO2qycX3OniTrGgpKvArL3SJv1ad8iQazUALFMb?=
 =?us-ascii?Q?udXL6q9NbHR+lS6pSSChMQ/v5veFVqTvW07W+6tDb29Q9o3VZVImqgcNR3dl?=
 =?us-ascii?Q?HbF3sbF+g4hz3HXL+k67YAGFXsWOkfJiwcvfjysfMggUIH1y/dtHLBpovb0S?=
 =?us-ascii?Q?+JSakMObfcAvDj2JGA58YKwZebx4TTqBlIK88JSIahk3o5Wj+inHxSBxxCoT?=
 =?us-ascii?Q?h2/RfXEmQm+jxoWWfUiWhI2D3s1bJp+Q9DzLsVfnCiwIlPOFcOKIwutX68iH?=
 =?us-ascii?Q?QJB/5qpdzoOmQ6hjWVKPqF8S/BgJm34lQZrhNcZG82R2It8S15gvu6NrW5YO?=
 =?us-ascii?Q?vNW+5UZc8peCm2DT9ek8eThsnbk7EP0RkB/qD5YGK6dTTn8izad58H8sX15J?=
 =?us-ascii?Q?g5YLAuGL6hqd52TXM+OnSDA9++0Zr/7zaCu7pWKOygQnrL+LKomQcEwrknVT?=
 =?us-ascii?Q?an5qTvviWNDrAE3g0lmyWeUBBCV2KjaROhtAt+ejojD94ogMjrnUgmWVX26t?=
 =?us-ascii?Q?6VTrebODJ7LDtSQXAjIHtx1G+7w/FMqGunrEfswDC6GpYhed9Wn04QDwxl/S?=
 =?us-ascii?Q?tzaxn+pV6BzHA32RbQzdG+cFvQsxol7p9TGA70xfMvvuZJZ7X92gVwDpPOTJ?=
 =?us-ascii?Q?FfSpb9V9/UOvdsssL25GUik004GnxGzG/xKBblngKjNXsRouhIgua8YqjFbd?=
 =?us-ascii?Q?pnZCEtl1sj9f30RU2Rx/MubrzHorGa4Fo34hph5ExMOrSUFVxRIg5d7Ho1Uu?=
 =?us-ascii?Q?9w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a39add3-74af-4af9-bb11-08da7c2baa0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 06:27:00.4473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FsbH1Mji1dp5dGK06yLnUk+u+DVvHBlWUQ7DxwaKNzc5T7eKkoxfWX2wNPLzw6yk9Xd2pPltK9oX3wuJJ1Vt33WUKiZdXM/5N52Zn2whoF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1497
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660285626; x=1691821626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljNB4rE0gOfISFPuwlohkWuzisfq1OTkP1hedNaFaNs=;
 b=OdMjfKXt1khv14oWQ7T5h1VIuCptmB/TiCUiawsx93Qf7gb+0GOUhTQK
 4pSK0UmAvDXEl4JdPNOHjF5bd0AqQMC9kkmXyidkmcFITpACXOAQZRufC
 IN3Eq1tVmtbRWlnHYEGEdY4iWyJwGapemq6X3uV95kkFlqO0bqcziKZSO
 9vWT2NAR7zPaHSf3lbZ2vJSIgY3Mti27bBbDJSWH79EDrW8Nd2K5mMid9
 Ar/91XGn6gB71AF95dqGysQwun7dZO1BW3gD0FP5izG8tJJK73UnC3VtP
 qCOwmkqsqGvP+70ROz7/KTDNYDF7QwKj0i4UH1nsl7KOr37LRFkXNEJZn
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OdMjfKXt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Get DCBX config
 from LLDP MIB change event
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
Cc: "Arland, ArpanaX" <arpanax.arland@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Anatolii Gerasymenko
> Sent: Tuesday, August 2, 2022 3:26 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/3] ice: Get DCBX config from LLDP MIB change event
>
> LLDP MIB Change Event (opcode 0x0A01) already contains MIB, which has been changed. Add ice_dcb_process_lldp_set_mib_change() function, which will set local/remote DCBX config from LLDP MIB Change Event's buffer.
>
> This will save redundant Get LLDP MIB (opcode 0x0A00) AQ calls.
>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c     | 36 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 ++
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 30 +++++-----------
>  3 files changed, 46 insertions(+), 22 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
