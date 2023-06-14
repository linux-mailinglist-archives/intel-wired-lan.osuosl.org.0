Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B4F72FE5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 14:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBA0141BBC;
	Wed, 14 Jun 2023 12:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBA0141BBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686745307;
	bh=+6TSV7dl65pIsTe+MHNn/IltRT1UgtKAV2C4diInG+Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5VHATDB5mQ2AhxxPXjWFHud5d/xUb6mhfrepVjp+Fy8KSertyxnugqmanDUpoWN6n
	 3OYgzWTt0lu2QARi8946e6eitWMX8ToouK8nNgeskN10kjX9NmXUVXxFWS/zmAiXw0
	 hG6RA/KsFiG97N4czwLWJAwveIWROgzY66eCQY/HD8fVEyyOZPEdsXFE5w4v2wj5KZ
	 F07cyDPmM6t266+oOJzDyHRtMh5OrUA+t6RxtUX1on2ToIjuEdePszq6mWsAY7vse2
	 1B19UJ/dnc/JaB5611yT3KChVXMeidBK+Pq0LVhAvhnkl+UcIAYP/loCxrrx2fz6rI
	 lgSLWKo0qgK7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bziW1btQ561R; Wed, 14 Jun 2023 12:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECD89416CE;
	Wed, 14 Jun 2023 12:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECD89416CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3296F1BF329
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15B0E4170E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:21:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15B0E4170E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3X4I_sCycuv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 12:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDC0341584
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BDC0341584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 12:21:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="361969034"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="361969034"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 05:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="958783277"
X-IronPort-AV: E=Sophos;i="6.00,242,1681196400"; d="scan'208";a="958783277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jun 2023 05:21:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 05:21:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 05:21:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 05:21:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1omFlvQfFrkBWC1OZGpdPrUDn4yW/17kWTm3qPA25q/5IeYT/fTwsF9BMY9wSzwgPQVhqsCiosIApeM3ZY3xKmyBoFxKGDq0YdYYRdXFW01xwnrrQ4aua+DtGVcOHYQUMcSVCtLN7XxNJvo0sCsqkWlZDDUGkr1I0zyawloAmHn8SvnArpZIB2NgUMH65TygzvBmmoJbVFKP17U0dR0eKJXr/fH/dVp4FGLIlb0UFN8yY0qOwbbEo0iZrY6p8ZnBBgP+3VPriHhVv1ygCU/qTAkO+GWV2IfbmJ/tL7NqYtwtrIC9Ig3/c0oQnAbvu3tmN8jDIU3FR6xupmz7zR/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNppMuHMeKgysJXC7EbfiSUuwwHRpmAenVaDNktN3WI=;
 b=BuOLWplT2+TZ7NRX3GY9rWn/SDSFX15QRo9UROH7xGUoDoeM39xDg1vkA0/0FtfNJzi4X6mKj5Af18CXUr8NEPE6lLMSELXpGVs7nRxFvkYKyPnHBp4ajN1Bb4jx13reEjrVnHyZQYzvYd0oX99gvViyZB8rZYyzV8a9lmHo5g/5OSwtdcvGopP679rQ0DHkjWwpBAc3+N5fQ8gDiULgKEpWL8RbGE1tmDUowhXOccQhEgx96eCJe7NUj6q3N+FfXaK0JxKkDp43TFZ+jXuhLbRovnEb7USpXv7YiiEchxr5Iq+Ul/vT0mHdC6jkIzdItRuV88mWHa9qyHUv0VcOlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.39; Wed, 14 Jun
 2023 12:21:30 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6455.045; Wed, 14 Jun 2023
 12:21:30 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [RFC PATCH v8 01/10] dpll: documentation on DPLL subsystem
 interface
Thread-Index: AQHZmszoYeH83BxaW02EVqODRhjpgq+HyQOAgAC7rICAAHCNgIABGgiAgAAa0HA=
Date: Wed, 14 Jun 2023 12:21:29 +0000
Message-ID: <DM6PR11MB465799A5A9BB0B8E73A073449B5AA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org> <ZIg8/0UJB9Lbyx2D@nanopsycho>
 <20230613093801.735cd341@kernel.org> <ZImH/6GzGdydC3U3@nanopsycho>
In-Reply-To: <ZImH/6GzGdydC3U3@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB5796:EE_
x-ms-office365-filtering-correlation-id: f0b35c82-0ea3-4325-bf06-08db6cd1e1c6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FQ3S3Ai8cSdjphnRCRwn8nBqKEQNRtzfiHUBa2ScebqN0pmorIE40SX7aMfxEy0wg4Z7Dzj2J7P//TqW5CRMlaOefztXEql6Usq9/mVYf7w8dh2TSO0X1uFySY1g62bfABiiWJcmUXjB/H1sC8ik/0vOztKb0L9kY743/vA3tcVB394VjkQfla9kgXrPN+1/gm0h0Op6NNBraCeSUiB7VIQar7kSBRaQXhNULAHTtPL005c/9ciWZdr5cRHcqs3gY2MPs3OXuEGNEEic3Vh5uc7JpSIzN5zqliOGu6GdfC2fyoxU60OGpEzichXfF5NAn7oaLtKuQL5fRld6iqGDXjWivGg81I8rcatcZLcjA0vtMbBauCGgx685eujULFXhwWhJoNFtKBUFOsUrHqUqzsm8PQLSfAizZDqD9d50tIfVknKV30BiVuI4vDIUrWUfmgV1MY5CGPFbR7Urj1kMvAIRdHaasPUOZzmpZkUQ9fZ9BZn81AiAJkgXUCGNCnZUihaxA5FHytkzegoutY9Z8/zacH9TcwGHbz4M5DWaglnSaFxSnlSWsrz5KDyTujzIcWMZWbfvhjWIH5ufnDG512P9CwKvxm80Q6a58PjDi/R8YTFfizGFbFsOrO3rMXJY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(39860400002)(396003)(346002)(451199021)(66946007)(4326008)(66556008)(64756008)(76116006)(66476007)(478600001)(110136005)(8676002)(5660300002)(8936002)(54906003)(71200400001)(66446008)(52536014)(41300700001)(7696005)(316002)(38100700002)(122000001)(82960400001)(6506007)(26005)(7406005)(7416002)(186003)(83380400001)(86362001)(38070700005)(9686003)(2906002)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CQpz9DIX3FVTzO40Pha6iEnBS1P9r3vA+UaVyO4SSZ0nReqb9vXpe+26e+qH?=
 =?us-ascii?Q?UvoaMN9PSn8UMAzeirj/VMqdU6+r5BSKIVeL0pvzT4E6ePVQIVwpbqNB9yr8?=
 =?us-ascii?Q?CsuPDWkL/9HDSJPVjsAFP6Vm6aCbDHDaehVvxsJ+BQx0LHmQ0tDVo5AHw6mp?=
 =?us-ascii?Q?FQvOGmM+xqOO2kuIKsQoc1wSVZOFV4G3HUjwpZYKjaZW+2fxljd4Wd7YOqRo?=
 =?us-ascii?Q?90G/9qtnccVp1QoneyC4x8up5oa6M8D158HJcGAaU+F6OZgGF7ciRwyEwRLV?=
 =?us-ascii?Q?V50H8qPNNV2QajWZ3ppz9UmW6PhKQVMUYPwclMT74TsIIW4nbC5A4Cyd0CXC?=
 =?us-ascii?Q?xoJzMiEWoqbJJqZ9E4/XT5UW8sAgbCIYogWTEOAud4VTCiRPfORlIbUlhXho?=
 =?us-ascii?Q?JJOcalFGi9zvh0WzlzjD6cFzoz7EQhZR8mlrMn7zx0C6Qh0r0uY5iKEN889w?=
 =?us-ascii?Q?KuOB/HDKxELtOyJbCU1jMc0U/5ARM5wjTpfkxAH57VxLQoHtpHrBFohbWPgo?=
 =?us-ascii?Q?s+CDfVhqrvgRWD9zSVrPL2UMNDZ7JSSIjgxULq8TgqtOwX24YpsCG8gjG5Qo?=
 =?us-ascii?Q?8VhGSnLncUH+XpcW9cA9BqgCQhHDveNSLC6PMXrqecZqytSSkis5qLzj7pk8?=
 =?us-ascii?Q?+DQmxEX2pqzE16q5rVcgta0PTxfY0GH0Y1fkpL7F/h53FV4TyJzBGUxVlCLf?=
 =?us-ascii?Q?zZ23w8M6ROuxt3jmAbMZA8105fvUHADtIdk74rqH9V8d4tHMENgvT6dWEA3y?=
 =?us-ascii?Q?8OWJ2ylQfUUX+SLuYepAxlJ7O/YxuMZPDnovAaGPt6psmrYYt+kWWRthbxOn?=
 =?us-ascii?Q?lNwEhuvFyFIykWeliv+hs8szDYemTbUo1Yvk9vYOLm4C8fQ4UhsTzHbKdYqj?=
 =?us-ascii?Q?QY2aeqvGcS7495QIVHkqftqs+irR+C1KQjJ+n/TgMcrW0zfgC7YvWGAjgs28?=
 =?us-ascii?Q?MzaKgwWDlIqaxfO0fWmkC7tZ1jiwSOCq741eacsKKsUtuTexahqHMsUiqeTq?=
 =?us-ascii?Q?985e4zv7Yl6QshniO3/mhNpb1VhfGSuG2xGPmJrZ4tr/MCLZZ9RCU0TO6Mqw?=
 =?us-ascii?Q?1avHpDSAKwTLi+Wy02reuN1yGEZ5RHADP8aqWfX7dUrZTDj56ApI4ZRnyE2O?=
 =?us-ascii?Q?TueAWL1HtmEQi8juzY1vkXgMyi31/PcDNcck57u3MuL4hRdjkb9cIIk6R1vN?=
 =?us-ascii?Q?CvfIkCtafescHSruukJ27qXSqTOsKIIF6QtZEny/NrazQt72tADj+vY4Tgw8?=
 =?us-ascii?Q?sP/fnqD7tdtg4RjcARKCZcevhYLO0aUNECHOy0hjJt5y4WVv6wILVGnsfGlv?=
 =?us-ascii?Q?iw4wvonJCrOgBTlxsXz4APkVSPAqAkOD82A1EM2ZMK060I+dnDQ9GhTN39jK?=
 =?us-ascii?Q?zvei9mK2+FNpXpKgkOf3h3YEVKjmvM6/452vbkwL1Ykyb5g07ojFN+hE586O?=
 =?us-ascii?Q?G9dLZzVxmbUrPvxQ7SDdNTvT85tCs5yHTr5V3G96xcZRKIih7SRdDnpRLNK9?=
 =?us-ascii?Q?gI89HcI6KoIea2q4PhoMGT7AABFvpTPnbHD51YhX5puGhOumWND7aF+Lj9Yq?=
 =?us-ascii?Q?xxKEY3z7mOcnF2/F7rPxoKC8HG8Z+MkMsf66JEC11X43Kxc5N+6cmghz4GZi?=
 =?us-ascii?Q?Rg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b35c82-0ea3-4325-bf06-08db6cd1e1c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 12:21:29.4752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1dJdcOamgTJzDk35+9p4WjDIVAn0C9f11hmRmAtcI3ujO6N2jSkT5KvZEGXZw/7ZeHQ5TRWoijhaan6B+MH1fSdWu2x1l92ZpF4X4tk9Dmw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686745297; x=1718281297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z5gmdTwtb6kwOc2vCBWsrVKOmbNlwWSzFIbHOtcaN0E=;
 b=njVxilXKuF/gizzYSRUkZBuSmmUdCFLFfTjyhrW/W3MC1Ti5KOXH7KDj
 aeUhkol2JLJgB6lMGBH8xNY+XWlEj4/vdG2FX5VbheLsB2FHAFRKMkPtU
 Hqcx+y4RRZ1oMHgH9B3VvFwS2RDKKtBkU3PtBBLOIYUxZjR3QaNe3p/Q/
 vPrsXOnFPKIAHVP4zzO5uaXYoKDdCWT3eJJ3qhAaz/nqzfN0J4Y3CuAcb
 duYsjYTz2emzpqXRoPhZknLMjN/EIoO0UwsaBWeYfCDfLnZkZ1TZnMe31
 fasKUsD5IpO6KgdGO4FIIpOdmltZTAej4Zmf9X77h1ufgXbH64/QWVdeh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=njVxilXK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Wednesday, June 14, 2023 11:27 AM
>
>Tue, Jun 13, 2023 at 06:38:01PM CEST, kuba@kernel.org wrote:
>>On Tue, 13 Jun 2023 11:55:11 +0200 Jiri Pirko wrote:
>>> >> +``'pin': [{
>>> >> + {'clock-id': 282574471561216,
>>> >> +  'module-name': 'ice',
>>> >> +  'pin-dpll-caps': 4,
>>> >> +  'pin-id': 13,
>>> >> +  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
>>> >> +                 {'pin-id': 3, 'pin-state': 'disconnected'},
>>> >> +                 {'id': 0, 'pin-direction': 'input'},
>>> >> +                 {'id': 1, 'pin-direction': 'input'}],
>>> >> +  'pin-type': 'synce-eth-port'}
>>> >> +}]``
>>> >
>>> >It seems like pin-parent is overloaded, can we split it into two
>>> >different nests?
>>>
>>> Yeah, we had it as two and converged to this one. The thing is, the rest
>>> of the attrs are the same for both parent pin and parent device. I link
>>> it this way a bit better. No strong feeling.
>>
>>Do you mean the same attribute enum / "space" / "set"?
>
>Yeah, that is my understanding. Arkadiusz, could you please clarify?
>

From user perspective the pin object is configured either:
- by itself (DPLL_A_PIN_FREQUENCY), as this affects all registered pin's dplls 
and frequency set ops are called on all of them,
- in a tuples, where ops are called only on particular parent object:
  - pin:'dpll device' (DPLL_A_PIN_STATE, DPLL_A_PIN_PRIO, DPLL_A_PIN_DIRECTION),
  - pin:'parent MUX-type pin' (DPLL_A_PIN_STATE).
  
Right now DPLL_A_PIN_PARENT nest can convey both parent types:
- if the nest contains DPLL_A_ID, other attributes describe config with the
parent dpll device,
- if it contains DPLL_A_PIN_ID, the other attributes describe config with the
parent pin.

The above example is actually a bit misleading, as this relates to the muxed
pin. From user perspective the information on parent dpll devices is redundant,
and I think in this case we shall not pass it to the user, as the pin was not
explicitly registered with a device by device driver.
The user shall only get parent pin related info, like:
``'pin': [{
 {'clock-id': 282574471561216,
  'module-name': 'ice',
  'pin-dpll-caps': 4,
  'pin-id': 13,
  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
                 {'pin-id': 3, 'pin-state': 'disconnected'},
  'pin-type': 'synce-eth-port'}
}]``

Thus will fix this by removing the parent device information from the muxed
pins info.

But to answer the question: for now it seems good enough to have the PIN_PARENT
nest that conveys either parent pin or parent dpll device information.
IMHO the real question here is about the future, are we going to add pin-parent
only config, which would not be a part of pin-device superset and would make
things unclear?
Unfortunately I don't have on my mind anything more that would be needed for
pin:parent_pin tuple..

Surely, we can skip this discussion and split the nest attr into something like:
- PIN_A_PIN_PARENT_DEVICE,
- PIN_A_PIN_PARENT_PIN.

>
>>In the example above the attributes present don't seem to overlap.
>>For user space its an extra if to sift thru the objects under
>>pin-parent.
>>
>>> >Also sounds like setting pin attrs and pin-parent attrs should be
>>> >different commands.
>>>
>>> Could be, but what't the benefit? Also, you are not configuring
>>> pin-parent. You are configuring pin:pin-parent tuple. Basically the pin
>>> configuration as a child. So this is mainly config of the pin itsest
>>> Therefore does not really make sense to me to split to two comments.
>>
>>Clarity of the API. If muxing everything thru few calls was the goal
>>we should also have very few members in struct dpll_pin_ops, and we
>>don't.
>
>How the the internal kernel api related to the uapi? I mean, it's quite
>common to have 1:N relationsip between cmd and op. I have to be missing
>your point. Could you be more specific please?
>
>Current code presents PIN_SET command with accepts structured set of
>attribute to be set. The core-driver api is pretty clear. Squashing to
>a single op would be disaster. Having one command per attr looks like an
>overkill without any real benefit. How exactly do you propose to change
>this?

Well, I agree that one command per attribute might be an overkill.

Thank you,
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
