Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB79728643
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 19:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC7F96121C;
	Thu,  8 Jun 2023 17:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC7F96121C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686245095;
	bh=duVPF+IhsoC50GadVjc0tgvSWTPnJPBrYJrW6mqwvGo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aXOJI6bQNATtKoYeoXhMDLCIT2MapHrWDRb62q0npLANrgJGNqSWpRmXprU9evmPG
	 n640YkBi4htODBFBfRJpHgSaOc4xLYD0lge6pd/fYlCZO0azf+EcejcoYHwrhtcKV/
	 vnAlDvaZdUSlHmZrcFZxzbTIWe4PGzb55ty6o6b1vkIW+nX7v5qZh7Rw8sTbfTxwQL
	 v/u9rHF3zN5Id4HLg2c11Dwj61WP0aU8fTRmQd2gOvZVfmIkyKdmL+j8nR2SKtbiTJ
	 CG4VgYQlfQiIw6iXQbc+I8e2H5Tij5ExEgI0KSSUCF14XB2g9X9zK+ygCEk1nDwUD3
	 +FLwyONK9/xUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NFCSkQLudHMW; Thu,  8 Jun 2023 17:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C074961143;
	Thu,  8 Jun 2023 17:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C074961143
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 195521BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 17:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4B5D83AFA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 17:24:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4B5D83AFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVy789a_9hRM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 17:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 150A4839B8
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 150A4839B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 17:24:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="354867341"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="354867341"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 10:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="660465044"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="660465044"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2023 10:24:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 10:24:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 10:24:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 10:24:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDPLtesC4dRA6yx1DNCNQfaF9FEagGszHGI84yBxqpH4yDcFbMY/LPO2z1Wh/bG8bg9eGixcvU67Sqo2B/dqD9IhQN0GilUote5m1Djb/o2PUlCzFYhNiZ6H6maCK3uq72ToCICM59Varg96gfYTSW1ZAifig7wy6lyuHHVBzEHAOpSprxPHCUNU5mAaBZWy7IG7C9erDUZH2lu37qja4YfNEnuY8E33VIwLPApzhpUhyhUo9QFNgwcjIB0KHK9HzTUXkCWT6a3+1YqmvNFXcNLyoEX8R9EVbzLsO7hBr5JzKoR7W/x6C7feQm8p3dv4wyvqJnI25AUqVu1H/7n6lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xJ6x412JNdfhy0cFQWJcUKFKPm6PjZ+Sk9M+Sngaa7Q=;
 b=lGgX3tijiUFjEizwGnf9KnL+zuxkJR4xERkSkHS/sz6JEfzxQAF1o8OphyaCDniDj86xIitnhxMlrB4uP54nxEluA+Jf1pLJliWZQ+G4NRh3yWtKJ4bK2qqZMmokkF6UptT8kqX9Q+Mdf4iYfqwny4ToQdzZhj55ezakeIM43Hal/nCng7oYE0aDP9QrqZ7uyaWKRSnpozUp+2bhRpwzV3izckshzZ3ZFdsuE3f7WrPJgiGv7GHOWatOz4UH/Fiwt10wcq3XLLuC3Lzmk3T8UZXSs8cY01SN8oI1VPtZ7wSolKr/MovgkRFitAFKYxQnihzWjKWQIc4vNJdt0x5ehQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Thu, 8 Jun
 2023 17:24:45 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 17:24:44 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH net v2 10/10] ice: update reset path for SRIOV LAG support
Thread-Index: AQHZmSgS2tsg7REvdkySccpYksxcJa+BKQ2Q
Date: Thu, 8 Jun 2023 17:24:44 +0000
Message-ID: <MW5PR11MB5811043A0CFCAC669EAAFF86DD50A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-11-david.m.ertman@intel.com>
 <20230607100825.igma5yifszm327nk@DEN-LT-70577>
In-Reply-To: <20230607100825.igma5yifszm327nk@DEN-LT-70577>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|PH0PR11MB7424:EE_
x-ms-office365-filtering-correlation-id: 8f18a5f3-227d-472c-0210-08db68454045
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rBKhlYhzP116/uA8kYhPNMW5+AS7DMKRXgnugKdBP5OWwWFXxxJ1hUTBxMh9ZHlpEm1Kp79xM3qUcd7lPbAqn1y2TxhmgULTMuYbZPSWqHa0OPHBUnk3YoWqIZQBenxQzpgnYG7jV2/BluZB6tqZ5NPAm35cRbc9DX1PwfcEBywqRfLkQYLlsNfD7Fzg4hNjsPk0KLbjmWfoF1f2vZAW8+zxTdCU/46PtvnE4DGK4jW0iyUn3YdML5aq+LiQvEIg6C3PkVcRzGZPQc5vEkC18oEvriUb8ZgSAMVQ9OD+2gZRujO3QpiJo0vpR9UHCshdE3+q/KET1EW2M3Rz/i3yI2TcMc2sDPeEUKsvjPwZEayXXmYkWGwOguHsaDObxlkWShWMCFmEBGkSp6KL4F2yxM9FdZqv3SW4vdVRXEH6eahNLYTC9XC+EPwgSyJUn0W3dUsmT8Pzl4/T4JzNBVB9Bq6clfqfwU8vc3FP3mooqrC4wc35ZlaEjRFy8PGF+0/q3LN2iz98kqzCx9488XrwNiVmLxssRePddoIUDXGm/ghtPe8bKEHkM/iaqkzYokYoD5lZf0YvFflsPg4/ul0HJNB1pV9G6OQXcEYOJrnZOj/uqmsgvjOCjGutqztH0cwG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(346002)(39860400002)(396003)(376002)(451199021)(478600001)(71200400001)(82960400001)(122000001)(76116006)(4326008)(66946007)(66556008)(66476007)(66446008)(64756008)(6916009)(38100700002)(54906003)(8936002)(8676002)(38070700005)(55016003)(86362001)(33656002)(5660300002)(52536014)(2906002)(316002)(15650500001)(41300700001)(83380400001)(26005)(53546011)(6506007)(9686003)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4tKvs7qKvBeP3H+xeT6/PTqyuU9YwU06EhRI3mLJeug9rk9KYZ4R9zTh7pg6?=
 =?us-ascii?Q?HY2gBvjjB1Lu6vAyw+1tztOZpQkIFpNGrZXPXyM7E/u+X+Yu4NYQoUgSoqGj?=
 =?us-ascii?Q?n08ovGumVKThizSaiaAcXbASlbhGJU/1I6cVzTh4lNs5wUUOiLyLVp/K4Ns2?=
 =?us-ascii?Q?0+PUXhXUvq7ujYjojLbAco0EtN3HUElmnpXzKkrIDhh7HKs/K3UxW/OybHzu?=
 =?us-ascii?Q?kwNeDmjtlTY1z1QGt/+/8+zY1mFAcQXRURamD8yYW6RkjW19TqU2VQ/WrxIS?=
 =?us-ascii?Q?ki7m76D9cflwMVeFku/AfECuI6xQkoogZFvLFJtufJuYB/Bct4zWqErAIJ9J?=
 =?us-ascii?Q?17nGPKn2HCroNT0faewyUX7+yEwMgyqofFdsOONzSNVUg3gv0FdqdXlQgzze?=
 =?us-ascii?Q?aa6NCrFys7DFEQqa1yLN3u/mjsm+nzRrxMjSFJ0GYYy744WPpF5puGOayzv2?=
 =?us-ascii?Q?RKF8aAXTtBg1MhMcV6OxB3ZVrl3RSFIR/7Vm8ol6maw+z3kQKBba6buWMgys?=
 =?us-ascii?Q?RmEHZIdEmR8nBUwWIJxQx4r7Hsr3PyJ9Jtf/fL8cLIm7S0NOHG8PckXjwbA7?=
 =?us-ascii?Q?WMwOs/tXPPiInUaZXLY+6OTXtDTNgMZ6HDnL/71a7O6JoQDXyZdITuhoxS4v?=
 =?us-ascii?Q?/LgtyLyw+Fl1NBOxZXhjtDoZgSxU8b4vlxKc5A1NgN4UH+v4chxdOi2L3IhA?=
 =?us-ascii?Q?6t9+a3CIwpmiGxHRa5sPBeczlmWOokYwWIBLNnO5d1xUVi0zkoil6pBpi24y?=
 =?us-ascii?Q?61m6mWhEZN255vDt613EhnW84SKvVRHmvf+n3TBTTXy8WGMl3OlrKWbO9sUv?=
 =?us-ascii?Q?EdRREnLehY+KS0Fw/BgmqqvscnzdG1rIIrC/bUpqB9SHbXj1kL9CWCoGD5RQ?=
 =?us-ascii?Q?LD8KxXizL+ssjEKpi6eTxCw8IfVNP0KD8yr6TwcqFDT4agePUSKa1DVNU/kB?=
 =?us-ascii?Q?7qP012i2dw6t3hjQ8xjdmLlQD5a1xazGtJqKn0QcN6vJJpf8PE+8Ks34CnwK?=
 =?us-ascii?Q?6+gVjEpbOXfWPRrgX4s5hDE8PJqmIsy4sgMTcCYE9TjLIVxNini3D/+xkv+c?=
 =?us-ascii?Q?de6Yp9i7UTkKqLl7rzSdyHKgV6nEG7w5uS3oTyUYP6EugYjAFW9ESVK/oc1W?=
 =?us-ascii?Q?YCmC/Bbd86e4wdOFEbv7Pp5eiZSo2ZXgJsyJALms185ckd/anbgqSMp7qhVC?=
 =?us-ascii?Q?AWbzTqMMZ2Yga8JKSoKVENfyANyvn+KlJSwSKUPezUJpHvG9uMRbkWzYsCog?=
 =?us-ascii?Q?wIiqYa7ltlBIWgFqnh1dEPrkfVXIYSPmWCFURxGoyfIZNu1RYNN3Qn2+36h5?=
 =?us-ascii?Q?8Ugclbvb03E4vi0RuuxXqR9oNU2P5gpRMLmYSgP9P8EyerGlpdHQgroVMIZY?=
 =?us-ascii?Q?Q1UvVqNnhh9jFm2muqtb3yobFLqgKVBSR1zu0J4k52jx4/tww+ePSQeN9tG9?=
 =?us-ascii?Q?AVoalLFCFa+gdwWX2VwfewLFk0oxx4BLjqHPN8sJpZ9fUWDN+HveBhrlZ/bs?=
 =?us-ascii?Q?+z+sy9eBmpFjSzMZV4ZYFa9UV3Y8a+lbyADrdJq2qrKlMCmlB4fwKaZ4WqvX?=
 =?us-ascii?Q?ekXpCzDW+TC3aWloDDG+5FDa7u+fP2vHKytAedzR?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f18a5f3-227d-472c-0210-08db68454045
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 17:24:44.3270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RDiIOlM+LJZooXvHlAZbYbRs2KBIl+DSUGXDofLrATetG6cjp8geuEFwZo5QNMp5Y6FhXjf2X/IlyAz5Y/Bg2aVwaMjXA5xaLA14BAJObhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7424
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686245089; x=1717781089;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EL1+PQf+pFqDNkC4MvmPJTXUgDZC3XIM2sZ3Mj0VVHQ=;
 b=PDl+7YR6Llf8Xhg3I9sGDxOWbxWDSPuepk8WQQH9Bs6NzSzvSrFLDA8J
 vChmHlC5b0ielDXhiyj/sKcgnSDyPRVBG3+yqIg4v/jVNbsNfrBq0NYn6
 6Do5AO3gv87B+foA8m1zSaCZVahn04FYealWprxOsNYU070VRmNgmTZeu
 swlSJP4cjXxir6HXAsMZsL2zB+QpVmkeSVT0p9pXTrEi2awE9y8XBTPeN
 QW5Ua2SW7YGPr4aaaN7BxRePCS4BeDk+Z7fTF0ujCDMS/X8oj1uzazEPB
 NyC362mZEbIWcOq5+U2toIc2JklC9Ui9dUBdiIN/2cSwf6PUK8FW60JYf
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PDl+7YR6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 10/10] ice: update reset path
 for SRIOV LAG support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Daniel Machon <daniel.machon@microchip.com>
> Sent: Wednesday, June 7, 2023 3:08 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH net v2 10/10] ice: update reset path for SRIOV LAG
> support
> 
> > Add code to rebuild the LAG resources when rebuilding the state of the
> > interface after a reset.
> >
> > Also added in a function for building per-queue information into the buffer
> > used to configure VF queues for LAG fail-over.  This improves code reuse.
> >
> > Due to differences in timing per interface for recovering from a reset, add
> > in the ability to retry on non-local dependencies where needed.
> >
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lag.c  | 287
> +++++++++++++++++++++-
> >  drivers/net/ethernet/intel/ice/ice_lag.h  |   3 +
> >  drivers/net/ethernet/intel/ice/ice_main.c |  14 +-
> >  3 files changed, 300 insertions(+), 4 deletions(-)
> >


> > +resume_sync:
> > +       if (ice_sched_suspend_resume_elems(hw, 1, &tmp_teid, false))
> > +               dev_warn(dev, "Problem restarting traffic for LAG node reset
> rebuild\n");
> > +}
> 
> This function looks suspiciously similar to ice_lag_move_vf_node_tc() in
> patch #6 :-). Maybe theres room for moving some common code into
> separate functions.

I was able to carve out the parent node location code (a pretty sizable chunk)
and make it into a sub-function for reuse.  Thanks for the tip - was a very
good change to make!

Change to come in v3

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
