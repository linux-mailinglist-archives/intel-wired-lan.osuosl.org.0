Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0BF7D4BA2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 11:12:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0D2684756;
	Tue, 24 Oct 2023 09:12:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0D2684756
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698138735;
	bh=aSKDr0gX74evVivKQCvwxA1vRKGnyc/n2feU1dWlphY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SGZmEWSMldNE7Mj1sClZREGxtN6OE6qyvrgMIJlyT7aK3Sm2EbZEMd2R2phF2O6Y9
	 39AXu61RTuvMuZvuqpxwbMPi0ReI6CHkt7n+A5laSMFO1ZD9NUtNeig4Q9bxT4UDG0
	 gcTi34NQYFORbh0O2WXDtuOWCCc/XGctLNfG5qFssbwWViPzDSo8QEDTVxAyO6pK+L
	 TcjTUyHzRsjk8vTz/2iWpxZmaRf+0Ru06nxm394u3pvzu/H4300BvVtzn4fedk1TLY
	 9mzR+u9TpprDnjXt7ObW892zfYfHjUq4+7BWtOfkBQctFwShXUNKrvrzhg7hPsRrTP
	 4zdGX9jjnfo7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OgdQYHrfazvo; Tue, 24 Oct 2023 09:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4018C84755;
	Tue, 24 Oct 2023 09:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4018C84755
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECB0F1BF3C4
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C28E74EC2D
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C28E74EC2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPEP-mk8zhWi for <intel-wired-lan@osuosl.org>;
 Tue, 24 Oct 2023 09:12:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A1F814EC43
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 09:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1F814EC43
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386827087"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386827087"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="828751606"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="828751606"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 02:12:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 02:12:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 02:12:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 02:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IaeByG7I6WwgYRTCi7wPKkOXihRqEL+/HSYugBp6QhQ6DLxCAFRVikjsIdIMtkjfTYfmLyOGOj28pWF1UqKrNVdy0tBaHzobHgpPkLq/M562Uvh6INUj2z61QHypdkXjrsvYVHIFtjVOMtvcCKddje1jFSKgFlY1YnS4gQpQFfif+1Db0DcMsXFiWwEBeWq/6Tr8I88V+4yXy6jHpPb0uxrMsAlZtab+vEM7Jmb8PwN7sCwl8aiz6imSLG4xYg3kQ74LtG7JeKJxjtFQyTK28Ify7GS7X8n4YFaTZREQx5/5lsGytHckPxVgvgnvjFM+jvPcSeGOHLKCtv4hqOvYZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VxC6S0v59AlYt46iEcSZ5jfLwFH6dY6sQLT0dtuZkq0=;
 b=kYN3Nf5HrV4L2dy0N8oU+tgLP2Km5PAh0EB8fRH499slxJmWRLVQgAaThR/38o0FPioJnLSARusWOwLTu4uAsuRU87LE3LP3pijr8T06cqRSYEieJrG5R7+GdcCHlnUIBMxI5GcxJd89GJSFJex9o4wUH5NoqfKeTSXP1FD5NoEFqt/HtLHNILu4B2skyxxw2iAt0LxXG4zG64SptIkPsbfaSaVafZWvizKvVxMG9X0zQkdecug0h3u4WYZo5hYp9TL7zx+7kcGANiSV/ZOAAyvgwMMxiAugjtbqGTxZpl6SIIg1l7tl5kLoPLpZuipq6wWROkHsJaapBHxJrB+4rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ0PR11MB4910.namprd11.prod.outlook.com (2603:10b6:a03:2d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 09:12:04 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::20a0:97f2:c358:6621%6]) with mapi id 15.20.6907.030; Tue, 24 Oct 2023
 09:12:04 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: add a common
 function for undoing the interrupt scheme
Thread-Index: AQHaAFEc7PAYGjicFUKrz1HzZOUr4bBOQAmAgApzktA=
Date: Tue, 24 Oct 2023 09:12:04 +0000
Message-ID: <BL0PR11MB352180F7D49A38A9020367198FDFA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-4-mschmidt@redhat.com>
 <91efda87-c60d-4988-987c-9824717f5a2a@intel.com>
In-Reply-To: <91efda87-c60d-4988-987c-9824717f5a2a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ0PR11MB4910:EE_
x-ms-office365-filtering-correlation-id: 460ff512-a2b0-4bfb-9efc-08dbd4714a00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x5ulCzzzrP9FwQ7tVGlTNCnlzqDx/aiP7qN7RYsCph9eAuAE/KUNj6LPFv0oLyoyPJajoM8j1SGb9KbUASr9oaJ+Wi54Cd8anTxaAZp37qS70g0HqjPGkqttKKdfh9dor8vJlH0Af8VTBGwnNI4/Q1cZvxoA86RyXtoCUUJU59l65OpBc/JF+sw3WMwKVDzKtu3nxKQP+BWuQ7zytDdsNiZs/qfaoltOgXiBwgNp51/QV6T3u0zIGFT+zrQdBfAUtRjfLASFLPglw5bZUst+0WZ0PtS7xqMp80gs7mvLjEnn75WTe4ehTmPeX5VGbXKsFlM5eRtfp+VIytKnHZbGNcsJ0BoFNpwN5IbjYhZ0NNNiwlTj4avcTK1CdI9C/Z13zoeihdPtD6Doie3O9jo0+n/yGNQtyA/xaqTT+2grFLHUAYD/Vz+4pD6elRmvI4w50Swr55XhFWepBc9TqMaUIn0xUBIpgP4QnVG3gQOgvOLXm61ngrwml0zHdFWhZ6VdSUibk7oBKVhiOp+rlCorKr1/YHQzxd2UYuEy0AH1VEXPTrM0UitrRuiy1GuqanRFdGAK0EIHfj1ypItVo6VUBBvs/juNNytIWapsl8yIV84=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(71200400001)(83380400001)(26005)(82960400001)(6506007)(7696005)(9686003)(53546011)(38100700002)(122000001)(33656002)(86362001)(4744005)(2906002)(64756008)(52536014)(478600001)(8676002)(8936002)(41300700001)(66446008)(110136005)(66556008)(66476007)(316002)(66946007)(5660300002)(76116006)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zYiOy+zftZeFrLbp48XlZXoplS0XrOfTfKj78Zse5gU1QjS5fNh9eV1afYD9?=
 =?us-ascii?Q?Vs/b4A1Iai/I4xeYzrJ69IXysOyCL8HNqC0CzWXz1Kj2nsO8+3rNF6ZhB19p?=
 =?us-ascii?Q?7H8pECWjwJ9wnNe7C3jIaFKxzaoXr6jCJysJqYpRd9DjDDZQ9XngPNkTsy2u?=
 =?us-ascii?Q?AFcuLy9c+wskjCR4r+WR8sHIH1frNILNYMhNiweomEclvwUKLCrumDB4xP/E?=
 =?us-ascii?Q?xVI/PEChmO1elmJqeX/mJt6D2Vkk2h7VXsXBs0TcgBwcRf2yqjELvJ/QnITD?=
 =?us-ascii?Q?EZ+cW970eEm3ORjwiaYfLKSDxfYA6Y8+QiufPsQAtsIl8P9pKOD5voMgFvcX?=
 =?us-ascii?Q?mTUFDHbC4/OVQyqja/YZB3uTCRgICKm4nILfkVTKpGZyswBypvHTdkjmK2Aq?=
 =?us-ascii?Q?RZ0IqfutODUGsoLyQO0yLg2Jmi2pcjXqMj0fuzBXxXq7LwF85K7eEgYPdg4p?=
 =?us-ascii?Q?dz6XHbozi5T/K2j0jPf4JImsFtfpC8Dw7FC9DzefYuWtSeJRh2NQfaZVsHaO?=
 =?us-ascii?Q?8x3g1yPGWeU90oxJoC2lhvbxxWXBu5iPIved+FH2n/543G0ODNEtlvYNIdoY?=
 =?us-ascii?Q?GEDPUUNNTKj5sukd6ATXQuA8l+Z6lTqIwMi9oKyRJXwbdm66Q2HZOljFVSu9?=
 =?us-ascii?Q?4VvG6GmIYI9VPyGNpy+GXnpgYTb9E5XRZEGpkQBtNkT5rm0u5m8vjtYY7Prl?=
 =?us-ascii?Q?AGiWDVeK7sw1db8OBD2wBZDKVOEOQH/Duk0JPu9geFu2PrCAnxWZKQBM1LA8?=
 =?us-ascii?Q?HdjxAxbvAVBNZniice54lgGkk5M+eIdDV66RXgapVj2VMw18wg5A4BQCTRjD?=
 =?us-ascii?Q?91PoiK/IhXcPYo5to8695hxXISuvHHcYU5c6jt2nJSiCwH4wVqcQQges79M4?=
 =?us-ascii?Q?ACeJ/rtCFBF/l7kddXuO7z3euE00mUw86TiQuk3YbAJnM27ELNSsy4AgNwCA?=
 =?us-ascii?Q?XpERJOAzmrsGq4NCBtso3J4R0RXl0jSUehVnSAgvuoiyfUY48Dj3SQgl169w?=
 =?us-ascii?Q?Lp4TpuZUIqcKsFLvd1By3zzaUQJxlZcHzmWGRUxH+tsthgzqPzYpUdJ5uNgt?=
 =?us-ascii?Q?FWNrOX7a6HfZIPNu0Qhl/mw9MH7JJd9usmFXhbxytJtQWVr05iYBNIdq+8gO?=
 =?us-ascii?Q?CMDiNKYn4ZY6zTqBfvU8VLvI/SeVWG9OhjzsYAS0yUTFD2B2ccIzkK7VrQiJ?=
 =?us-ascii?Q?89oQTpkBKkTjfdPdN+AW12fTjy1BALXdlvuUwrwKnvBMc6BMEO5YDdcOT5aP?=
 =?us-ascii?Q?vdbKKRqVGH9p+AOiB5FsiDrJVqTWMY5rx9K5zhQ1hHCkyRwkZL7DevVjvUkA?=
 =?us-ascii?Q?5NrlorUYfXucIQyWPYZQY5ImoqtoHHPkTdKEMAT78H1PA0QkBQ29K9x5KdzF?=
 =?us-ascii?Q?ca1l+v7Sx19nhjlGCTjx8NWwYC2loKaq1+xH16d2gI8BPS3XivkNK3EMb3J2?=
 =?us-ascii?Q?9LdiZza8oo1UB/7m3ZEakOoeAi+VbsEaDe7BYByODAw9WeUzJp6Xbk81iiOs?=
 =?us-ascii?Q?XGnlCnGuWFwPLwoAc1l2oS1t/MfWV6mbJg0cVZhdfJsxYm0XJmvNy3hkueo0?=
 =?us-ascii?Q?3bxgQgOeFupA+LiR2+HjnW/b11hrmocu9fYTrTh/cK8Lxi6A3hdmWYprfwon?=
 =?us-ascii?Q?zQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 460ff512-a2b0-4bfb-9efc-08dbd4714a00
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 09:12:04.0453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VTZC+kXjtuBW2tOLzAJnTtQ6Wtks10FqWvejAarQf+X/0XjUMLu5x+LUmIRE8SGTniigkDJlamLM5G4SbgSgZqOC3P+LZBiT2nfx+8LrWnI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698138727; x=1729674727;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IJU0xBWjyNIBnMvsAk0wZDt1U6IXdpkpuEpF6T1lgzc=;
 b=HXYf/6zJ7Y5cC31OpEo3s7IbVa4NnrA3Nbj1yP6+DQhYR4nok/hlCckL
 PQ88boDu4Yb9LgM0YGX+y8g5nxHCA+L+9AGOv0wiLoyP3LCcT3kWQdejp
 1LxuvfaOMNYpPZilbbD0dJTOS9U2wZs8eDDq/UuY6uSIqz8ytuxeYijfe
 bv8G2w/oPKz1I4ihnG6xBhyTl+JzBRbXpCbiQM3z3z2G0DMuQk0YmvJrY
 dsLlTtFAlXE69lRRt+WoFho8RLzPri7tRTfuyQ+HGindQBBD1phKu7idL
 UHKcTqN/oJxZhq9BLebiYjrAMCoV4KvJbCOyHepNo5tODNdymJlXVIjIl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HXYf/6zJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: add a common
 function for undoing the interrupt scheme
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Tuesday, October 17, 2023 7:36 PM
> To: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] iavf: add a common
> function for undoing the interrupt scheme
> 
> 
> 
> On 10/16/2023 9:48 AM, Michal Schmidt wrote:
> > Add a new function iavf_free_interrupt_scheme that does the inverse of
> > iavf_init_interrupt_scheme. Symmetry is nice. And there will be three
> > callers already.
> >
> > Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> > ---
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> >  drivers/net/ethernet/intel/iavf/iavf_main.c | 26
> > ++++++++++++---------
> >  1 file changed, 15 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > b/drivers/net/ethernet/intel/iavf/iavf_main.c
> > index 6036a4582196..791517cafc3c 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
