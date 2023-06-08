Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA81727FB5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 14:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31D6641F8B;
	Thu,  8 Jun 2023 12:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31D6641F8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686226483;
	bh=3ZqR4c+4nnnUpP9B1GSYsKVHgJ59/XlKBoXwfxY60rU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rbaDdpmAu+j1QaiPgO8olNQeD9+UagZ39TulQ6ePuj2JtWEUlzvjKYIz5DFgf983j
	 8zHnPUUX4p27nxfygNuazXROEoOU9CeRqxo8/i/cMwqkpguAy8gQ8bH6Lnqna+cU7v
	 /a0b2yZH6gdHF+BEbOrVNl4ErsmNTcRjUvt3Wc4el1VHrX8wqUXBcZXqk+JKaG95Nw
	 kgwl0St6WdETPml6Gxf/HskBn66Fp9l1Vcj7Afs2jWM3kxYSCpgkpy32pBD3Z/SjGU
	 hopEJ+e/11fHujVSjIw4poHcs1Y5guhAFieFkpgRCYD0ueqZl9Fwg3/GR4Pv0cUvah
	 aba3WRzJy7FuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OBjoEcv3iBDl; Thu,  8 Jun 2023 12:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 700E541F79;
	Thu,  8 Jun 2023 12:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 700E541F79
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2F01BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 738EB41F60
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 738EB41F60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0Yg9JfPfW-h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 12:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 376B241C57
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 376B241C57
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="385629803"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="385629803"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 05:14:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="834167357"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="834167357"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2023 05:14:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 05:14:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L0lw9IB4UxaQb0pRSlMpbWo0CdBwrYx52MpSjKFgAziHc5jdOW4bbINTAaF+DmSjfuGxtjQqWMAe5rlTKJFiATwvX9Wh1bjWxZXtiCK6HQUPRiQWyEWe77LL+AQBLoQvXKlBJZ+RB+PAqwF9bTILZX5+cpqovoQoFYQFHEGcWL4rnbc2L+IR7SBCL/yYXpGVgWPRT+2lO37TSpKeaSm9RImxbV/UddkJzXpsNCwdR8b52XuJi02u41T85hOo3c7SrWjJsHQ4qJDl3xTO8zgQgFQ5vl4b013yiuE6yEiTZTTaY9pc1EuQ6BxMhWRLLTQdy5yOQdKPX74zPVQapSOUXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/YAzhI4VAvCouGUnbx7S3yE51vuYM+WJIumrl5ccAjM=;
 b=X+PQQ1us1bN/zfGGYFIgTDSe+kwfQroH9tzBArIgPN26vKEnUKfn5xntOkZAJWinwcfsygGyewSeaGMclJJM0f2oxw3Y8EmX4NBeaBLjdpzYDFbdy6iu11YvOxQoA51LQBJDPhXPT8BEXYdvDR3Aff3AnQs6kOlvvRQg2UO/D5Qij8h8TyCSjCzoqOuWIF+M4yiYSJR0WO7Ga832Pmr1AeVOEWI24ZjUslYAYq27e7PRoOyKyMAoXL8ILqLvCV6RO9ygZSmLqA76pZhC580qTctsjIyV4qW3o041vvOHMLwGYIhDrGNkJtE5v1dt4LJR8TkwatpfpdxLu4msHG47SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW4PR11MB5775.namprd11.prod.outlook.com (2603:10b6:303:181::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 12:14:31 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 12:14:31 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
Thread-Index: AQHZlM5Ux53RqZ2sXUmjQqp5/vlkoK+A0wlg
Date: Thu, 8 Jun 2023 12:14:31 +0000
Message-ID: <BN9PR11MB535465FA7BA0FAADF5300A7F8050A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
 <20230601211507.707619-6-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW4PR11MB5775:EE_
x-ms-office365-filtering-correlation-id: de7889b3-dffd-4155-1f76-08db6819ea14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WwzOONCDJ2sEKSN6ATnBfekFojt1wIwfyBwijUdhcUoDEBtCI687ZrNU3BxpwB4YCqLDRoV659lbwPbRP6zMR8CajZxn7Yw1CAwcawjxQr/6nZHyAox4G0J+hXCcc1Ri0hbMoncGGPpOXsn8gHvQ9yVny1CAyPdZk+pvqb97jNddR7I95Y/VQstfJHKEK3ixJAS3CTq/8ZRpQbzqWJaGQh3hP5sbqWb4heVuhp2XK8xHGEvU82mr4uKmmzH1hTYh1+wgr5ISJ2YNxRStcwhnzLUBJPH/pOQowvsRJbgsTwLSDPGOGEfN595y9lqLsET8bfurC2mYul7k8p+K787f8jzHgvLTEcfxtdz3iXtuaxP2vpUsJ3rvdA9iXT2g9eJ7YHrbkXRwaoS5vuivJJr+1MXLhPOCzJaRnwuqPK60htaGpg7gDPiOBZIvti44M7W3mu0OyqPUXNPwVcdD8CSESjf430nTXO5NKljQkc1/+2FeZyqBpIzDYTc/8L/cGLkepm0ok2ghbn8bska9NBMC46SAtUZxm9qt1GP12g33JQ2S7qmQ56KJM7NZlwRWyvsi08Rzfco3TghjGUhdI0aNCB6cy8HGf4bZ4PZNvNrW41I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(136003)(346002)(366004)(39860400002)(451199021)(5660300002)(33656002)(38070700005)(2906002)(52536014)(86362001)(55016003)(71200400001)(966005)(83380400001)(53546011)(9686003)(26005)(6506007)(82960400001)(316002)(478600001)(7696005)(110136005)(64756008)(66946007)(38100700002)(41300700001)(66446008)(6636002)(76116006)(186003)(122000001)(66556008)(66476007)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cV9mzC1kfyie6LwNankt+Swg5b1VVKdEeqe/uc1gJZ7qrITjERyFH5IIBfjX?=
 =?us-ascii?Q?XRgEc2gnwuDazsPoMmTIIwXoYKpI92itfbKPzyQxTOiilQhjmZaj5xyMFIoU?=
 =?us-ascii?Q?utLduiGLGQTG20XgMLccWPtvh/3ZDAQ5AAL/mQydoS2M5K8CzvadnB4WGj9N?=
 =?us-ascii?Q?SFIaxVKa1IM9UkBjmTUYKb7IfUftZILSoqCOWH+njmF2QD2ni0VHaaEkXGJL?=
 =?us-ascii?Q?iJRMIDMxFaqJsEGutEGvyFecmYN0teCodjWC800IEoVNU/0Kla9GWyorv4qB?=
 =?us-ascii?Q?yvgVgHT+UFnqPAtJz97gl4uIsB+2+b4MeViKIDcx4VTmzcSJTs2kHUAMvrBI?=
 =?us-ascii?Q?XJa4FYnPGT4Zne7wyP+4V+LlPlG/msbIi/rLzGebWyR9V0UIkQ3wStS3o99Q?=
 =?us-ascii?Q?tQxjHJcqiY7PT+fqL1apjR36i9PL3Xl0wPV8xrTSWQCWLyr7MDlgW26cMm4d?=
 =?us-ascii?Q?WCVRk5/NYgHEwabEZUcTSQLvtt0tcCzloe75HdTj+h6jOedlEtUAochzu/Ns?=
 =?us-ascii?Q?U4gnTJKlGoNBTiR24GLrkwBbpAMCi7Lv97HSl167NdIz1pBhxkmxEa4G6o4b?=
 =?us-ascii?Q?xA/Fqvj1Kc3cRsbUzJmDoaeM6LHW+pr1iQYLMSLRSuupVGyDdz+fr3aZAEjo?=
 =?us-ascii?Q?zM9gxYbX5irNI6qRvmuiIkHCShBONPvZZjYys3NWpMU+8fg4X9sLb55g57vd?=
 =?us-ascii?Q?ckwaLugc2WnaDIlK5GtVa8GJODoPXfvYyRMrSPiK0huQwgc2BLxaJR1GzO8p?=
 =?us-ascii?Q?auL2Tf4RaW178E+MXYLv85++ImgAcelVapK6Atn11Gu7OMCl8kiNGrntm9iK?=
 =?us-ascii?Q?CHuJHmwrggOrrhR6A4jA3G53HjQ46fwfJvuUsnH62xKSh+4R8EW16I9Tzbnh?=
 =?us-ascii?Q?SXzJH1iXcvVStO0ImXhEoKyY2Ick9C6xIxs0Zs2YKBN0Q8VlkNjOjdcuYlFe?=
 =?us-ascii?Q?tqFO1KTUeIWDVdvBV5RF8jOyYIZmJFToiCW5rc6rDzYJOAgdh1NPvNlMJVnA?=
 =?us-ascii?Q?jXemCSqjs+smKfvJCaRXqreM+AZLYG5zLFpJxShcGrVj1OdPTEu4QTDPluaL?=
 =?us-ascii?Q?DQT2MaIcaoyKoWNV+hmc4aQdZIfqh3ChPx1CYXR6ppKXSH0xv3Jpa72VBrLe?=
 =?us-ascii?Q?/P95V35+5PgXaiqEUFiZd8ctlkjozAl+DKn6+PM/6bZyXTRv3cZcv5Ltvl2C?=
 =?us-ascii?Q?D93vtPNZqorBrkwncNrmtM21jf9VdMhzabLQYBZROpv+Wmta3NsoXZkxgQ/D?=
 =?us-ascii?Q?USwYHw90F/JQAS02QvJG0QAhha1P8ekesTVYkFNwj/VHmxXsi34Jat+X3k+b?=
 =?us-ascii?Q?/f0lycFK3oBW9jAiXCW6vfKGtDKEQ/I3iTOygfDW4iNUbH4WCU/wuy2gAwIQ?=
 =?us-ascii?Q?Xn+F4ddN6rOmwa/C6MPXR5kk24ZkZZTf3WKNC9lQkIy2TCRJm/1cJoF1Toi3?=
 =?us-ascii?Q?9YueMPv25y/ZqrI96Nu9hjD/hgYghMJKG3lpMFUDCM6WvtUtIR1lj1mGWDWf?=
 =?us-ascii?Q?xp0VHw7HG87Q62atGyKH4B9gw0ywfT5unHaI/5swg5iDew2LfPIsbZWsfSzQ?=
 =?us-ascii?Q?8IDRRLX4Nnxg+FPa2HTAoAzaTQoYiWbTGSdTR6tn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de7889b3-dffd-4155-1f76-08db6819ea14
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 12:14:31.3486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xD4P/Hz8eDj0RLLA38LnqJnofA1vbfNtiOEnoCtqBmJiDiYShA6tOXSkNYdtue3wzGt2PapScegNkC5PVWNp3zTyS1INl6eN5bfmzYJ+6Gw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686226475; x=1717762475;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RMfhH5pNpGdwS6D9M4ZAPV80TzRHF0YSQssWbhUuXlg=;
 b=VjXG7vfoCoILM5FjzoHkHkhFKoc92NObcC2psKCmymWKiRXW6JM60Klm
 +l3XpE38uPQc24N9Dl9Z0SO1Y9E33jbWrfX6R2oqH+Goq25Y20QGmvxl+
 nkd2ZWtZzIFClMHvZL/iWf2NWOqNI2L5aXWMIx7b61DYTtB/VyBYamQPQ
 jPj/2Br8XjpTeWMcJNvg9uoTSJtdGhPIqPWi3IwdCLbkj78DqmTEBfI29
 V4ncfoXHU70RQWGNB6JoPD58qXEPgLDehq6winTZ219DdbWdyk1d47ADs
 bqQwrhep/AZsyM/M13XAQHJtSsOFreVtjclFu4GoyN+6S9ka1lyx2fnGz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VjXG7vfo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Friday, June 2, 2023 2:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ice: do not re-enable miscellaneous interrupt until thread_fn completes
>
> The ice driver uses threaded IRQ for managing Tx timestamps via the
> devm_request_threaded_irq() interface. The ice_misc_intr() handler function is responsible for processing the hard interrupt context, and can wake the
> ice_misc_intr_thread_fn() by returning IRQ_WAKE_THREAD.
>
> The request_threaded_irq() function comment says:
>
>   @handler is still called in hard interrupt context and has to check
>   whether the interrupt originates from the device. If yes, it needs to
>   disable the interrupt on the device and return IRQ_WAKE_THREAD which will
>   wake up the handler thread and run the @thread_fn.
>
> We currently re-enable the Other Interrupt Cause Register (OCIR) at the end of ice_misc_intr(). In practice, this seems to be ok, but it can make communicating between the handler function and the thread > function difficult. This is because the interrupt can trigger again while the thread function is still processing.
>
> Move the OICR update to the end of the thread function, leaving the other interrupt cause disabled in hardware until we complete one pass of the thread function. This prevents the miscellaneous interrupt > from firing until after we finish the thread function.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
