Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4A5734FEB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB85361142;
	Mon, 19 Jun 2023 09:25:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB85361142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166742;
	bh=lhKJZxSlZDevN/bRsV1rDZdM+LQWt15XFZDupJuKo5w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pZ7Vr93hYOt/PBdur4FLjW9B3nXOkB4MsjPbuwxqjXPx7/XFXQuxEthUMe3B5m0cQ
	 adi5bbFgsYRFXcyVMSk/3cA+TR/rAMEw7KP3Qr0upjqWciVF62WR8rYJM0qDXTh1FI
	 X78SeCJ6SbFTjceC7N4Nrc9hdwLimXKe4FE3mmGCzDBP0vhjw5SBGFA7XLceAYJK0U
	 KcGXJZg0RiysuZlfz8jIeRYsMEQV8ixiKGLXtp1tBQtGSXKr2R3fmZBlQaVeARTA7S
	 UyaHNdJeWlqpXIBvsxW6hz0V/j1rmkCGLIXvy1KDd1nd3Os63CPoZl4wV3D9SoVCHf
	 VUbrf5vUNyrgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARao6FfoRSXw; Mon, 19 Jun 2023 09:25:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9955861008;
	Mon, 19 Jun 2023 09:25:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9955861008
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79F941BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DE9461008
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DE9461008
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJEqJznJPgYU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18EE160F78
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 18EE160F78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:25:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339924868"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339924868"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:25:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803558420"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803558420"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 02:25:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:25:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:25:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:25:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZEwDo9RQF21fPkG52UdSXx3SD17kIA/6n606NUBoL5DfVLl4ReWhmPQhf/tq9vAryTC/77N5EcyxJGKOakCr8bKAIIxtR58KJ4sByCOaAtESRIEJJ11gNDlVAqN5oyYjTDGxBO2tzCm1aFdl7rxISmYqF7SoxYHyJXWunS+0WubS05ZKxbCeMhyiI6xVH5DIF6VvQ78339sUdC8EOeZOTPcmJ0hJjop8Q32Q/oeV2FoPVHPlmNkPWuwWpx9S9JfKBgbsVX1j+eaBgZVDztWWn7ePSljA5apYP8L/bRNcPppCX8NbueLf/1w6B+fa8+7Xb3SIbwsTvZgAU/QduHmhvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EdWI19bl2QHM3TbuGXTF+4y75Dg3NRbpAREwNNsRo10=;
 b=IMuRb6ganPe+V40P6NmS+sZBrRaj/PmVu72UrudIQapcrw1+29s5GVnajuBahG7adFdKVoCL7QSrFTzY1i/0xjfQcPcX89A4iJMw6i/vx9g7SVTsEy4ftDAaaqKeHRorJie+wOCeJaSq2DaxSYLV/Bg1DtIrFKGLaLGnl2FyYA71LpKqxmlGMzZoge4FXE1wJP4oH7blGF06DPHEIwR9xH6xvISPqdccubuhxwmhKIrDEltBLxXUT1TmJSQx4w0kU5B+lE1rSKub8agTwksbWbnqQylv+at3T/5963l6FY2tKRH/QQGPEms9dk7GPIu+0j5WiimJOxFRS6MjqT+W1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:25:26 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:25:26 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 05/12] ice: Unset src prune
 on uplink VSI
Thread-Index: AQHZneAKjJdbDnFxZUSgiStjpNh0Ea+R5CdQ
Date: Mon, 19 Jun 2023 09:25:26 +0000
Message-ID: <PH0PR11MB50139AA06A143B10C858591E965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-6-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-6-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: 04bafd5b-0f0d-4ebe-c52f-08db70a71dc0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YUj8TO8UAfoa6WKmDN3cCI4I63ihB/7Pprvjc56ngl693K86li3mTBeBDo92SjrPNiYv4F1piUV/+T2w7ekTqwCTN+r007bnYmyXibe9L2jhym/ylPMVTQ519avYs5Vni/vi1H3lp8QIbZJoSWqLgR53XDAK6+Fti9Hb3WOBWWgTQgtFxggmM4dw7858J22FeO5P81BIW1UoTP8BzeHWx+EtggR+8bR5KLEUxwAneygjXfGycxLaWy1n4sVGQQsCB7DQjMV4HM/AWvTnSxvB4gSjXxFCURSj9Bp/tp0bLvPOq5Fi1eAo70EWNfacKifUnZANpRNLHB833rA2R0GqTNxiK7RSdBVDAVqqlBvxxUqs1XBE3xjc+7pHEXukWptr//8nZKnNvmDPBdKiN5uMXZ0d9ADrA/fygcsdusTtn5ZqzijU190033NVpRNem/WY/boVz0MR7viDWXP7vwNDO/CyG2k1g1WuO2ZrFaoLNSEhsdl084WCPU2Fzv067Ki479S4VKgUnlc7xSlPX8sKaaQzMGreGDK7UfSaPPdcrBHLxgEaogsfNAP+eMJGt4xNXsEcBsO19BEsDIxnCf9xWxBI/EEWm/d7mWhVSkImZp8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?llzGH6C2OUD5a2A/mn/+lBZlH0TUj+RXS0z9GNuYQjalpTpfmrBvLHJE4m+c?=
 =?us-ascii?Q?0gzRmcCeT9vXEkk+xgBLPhMam5dQGImyUr8zyTab4P7MWDhQf58gUBAe94NU?=
 =?us-ascii?Q?DvTp37SYdftzFQKxTVw7juF5jHWOhtTp/ave6WayAuwAj/TJxOzjgtXybyZv?=
 =?us-ascii?Q?Xqyp5+9c5PDpzL7wm1BKaFBfp6MS91oV49I0NCdT1j/HDBwPuHhshgAtb/Wh?=
 =?us-ascii?Q?YA7XmFkEbTbTJKKJSsORDCgl6zPy5bdhZLuxIzT9aGsVkvbHzxuSt6XhXVxB?=
 =?us-ascii?Q?vysi7+jRyyRqZcdArpW2gPdFA8nvxDGliH95ZGwzG7Zmw+jwzDckW5bawbi4?=
 =?us-ascii?Q?DuUz6YWOG7d+C9fVtfVSI7Vc3nTfYud44tKxEGFrNwKzsmyXuw0FOe1o600h?=
 =?us-ascii?Q?4z52qd/K0V4XVQX16RFIrGRocHKZQWwN/GEzplNuEKYetDPY7JeK3PbsqjZr?=
 =?us-ascii?Q?Ae8Xo4mGhllyHkmGBHDPpU3TQmXJ+LNh1OcmTm8p74R4EjbxIhNbx+1e11JK?=
 =?us-ascii?Q?smfcPsUuSgtFyGpSzSHiiiXtdguvxml89Ix1NRH+y+2BdoLjZ1oeHHttvqye?=
 =?us-ascii?Q?0Hzxcz+mbesFNudKVDCjFzEjr2V6TuG2Uu+woHQ61D+YCqBTg5klnZCFWC5F?=
 =?us-ascii?Q?U7CJlOLWkZeQvM89JgSPHK1MY9amLPZ34Aw0m8olvn3bdGMkcZt0h3WXNdef?=
 =?us-ascii?Q?5opg6WeRDbWP6vkpEWUTkN6/ieOM/wRdvoiWmCuRpfe4znFMAbFKg/cs3P+Z?=
 =?us-ascii?Q?39boAVGgPja3shRYYhy+5BeiNaFHl2tddl5LAsP89TqMmkA/5wN8aU//eUMw?=
 =?us-ascii?Q?ZIEfM+s0QRa2iZbf0W9ztb8Kl+NPaQJCoBet0yS2FRRPhbLGENB/1Q1ufoAc?=
 =?us-ascii?Q?SlcpXQNMuEO52fj1ZkKK3/qbhJxLyo46RVurTaZ9QnZqgoQCtCi0TBKQUpVW?=
 =?us-ascii?Q?+YCm22iIs2BCNAaoIge82ezs9JRcrBMpT9BfAwfc81UwZWzUTA758ac+gGNU?=
 =?us-ascii?Q?kG95iWzN4DlK4uFNeqS+QkD9abC0JHd1K0sBjpLjhgrQr4RrvgdtBbzKZIfW?=
 =?us-ascii?Q?Rl7pIBcEFQ0B7y3ICP1sPMxxEyBVZ5XPuis4nBbeoflxG+DA6HiZL2+6dI7X?=
 =?us-ascii?Q?l0j+JXlPaONtrfGHidy6CrFW/O4Zha6UAdUOhJ0BmIAcK63rGzWxMh/NRKLp?=
 =?us-ascii?Q?Tqnvd70bBypwIQR95CUWiAnLH3WIzqTvaOzlTavr8y4zPm0zD4YjADR8uBb6?=
 =?us-ascii?Q?Gweo6qpeKePQpicdLDU5gJm/zHfs4iiBtB766skoHh3mMuRQ3SGDrGFDFpiS?=
 =?us-ascii?Q?asT0Co1uJDlGhdqV5vd7gKEcDUI2kweMY2t91QNA+YV/lBVzhKHa2Ugiw2GD?=
 =?us-ascii?Q?lFFj2SynCn6+/k0D9iGBxquG2syXf2sTbKL7Ako01ovVrORhr8XardP796Xi?=
 =?us-ascii?Q?Cqw1rNEkTcrll0A6zzh2w5yED0vNksduKC+rx0ZCl6VwM0iT1qX3AZfMMlju?=
 =?us-ascii?Q?OPVWwN75VHU1YA/2Z7zlcCF9OWOfVdONGFk2VBaNwwxjNmVQvAPCGenEdKMv?=
 =?us-ascii?Q?rw4kEhIw+kjtaGDNNJQvJMKYVovX3DGeFUC53UnpIh5EBg6CT39OqvrOXrjL?=
 =?us-ascii?Q?3Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04bafd5b-0f0d-4ebe-c52f-08db70a71dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:25:26.3769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wM8+3j1tXv1HJgogp7itT1v65S6tcZopWMnJDfxqB8TdE4yGCuMI/IcBeYU+Bv+ODlh6PkBkaFW9Z6HJbmv2Iy2Fv3rQCklyz2WmJJv0pcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166735; x=1718702735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IGQTQQepBjqc8T1NhJ/qWbffEdgFDO3QIJDEn+ikTKs=;
 b=NKnpAl6cvsPMA3UJ3zfwF2quwYnBTveQl7MWqHiCeni7+GGLwDeyeOuZ
 1H3uKZCfqviXjQRaS4azsjT3q2dppca6zAJ+6NXmcvxJN7VvRSyqzOFCl
 cSWgOHP+V/0RJGAhOs0lLhr5WGvpWcaP1b4wXJ2NQx36Vz7LYeSmN+KXy
 qMdh+Km1kv6PbLsJyVKG/87kfsPMUUaY39tbFlTIp6D8Vs9hWaBIUh/7n
 7pXw3E5SR7GMPEMc8io0miz6ptq89PD7uEyQgI/Qj/pEpr3WehN3X+QN2
 O9g8ENtqgttwXYv0rW5hWYQY4Bi/3vPuyRE8bMfY40F5qZS5lF1y0FZI0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NKnpAl6c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/12] ice: Unset src
 prune on uplink VSI
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 05/12] ice: Unset src prune on
> uplink VSI
> 
> In switchdev mode uplink VSI is supposed to receive all packets that were not
> matched by existing filters. If ICE_AQ_VSI_SW_FLAG_LOCAL_LB bit is unset
> and we have a filter associated with uplink VSI which matches on dst mac
> equal to MAC1, then packets with src mac equal to MAC1 will be pruned
> from reaching uplink VSI.
> 
> Fix this by updating uplink VSI with ICE_AQ_VSI_SW_FLAG_LOCAL_LB bit set
> when configuring switchdev mode.
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: fix @ctx declaration in ice_vsi_update_local_lb
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 25 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
>  3 files changed, 32 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
