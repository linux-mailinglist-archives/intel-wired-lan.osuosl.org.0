Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DB74D231
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 11:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C0C160E62;
	Mon, 10 Jul 2023 09:51:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C0C160E62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688982662;
	bh=h4KEKT71aQm/zi7fxrgtR4s91KSYN6NLkP2vLcLJP8E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BNuKIpO0F0eWot/n+fHxfJy7KMBh5LmsW8SJu0pFHgp2Cy6Fyvg9C+pzBIc2AUyRy
	 pQIO60wcU2PvxQKdgUM5NglfkkNFsArlu9SrhOcL4U7b4sF/SsHw4qbf3Jnp/51cpZ
	 leyIjWFbTEl9/y5REP/PRG8s4DBWDqs4p7fuo3UrPU1MfP0H/8WSlonmB42MuufYvE
	 COsSo6fDiwyMmmwFLO5jGkT83m51j0gYxjR23+BNfCz6EmXaBEBcnS7KBbJWViQrGY
	 nJP9OwDghchrxq6PbOfBzYS0yeI2qWZDIjAVacXp/IUkvG2VcAjey2xA/rWDgh/wsg
	 hpf/+D7gi1D9g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVvuX14L0ZEg; Mon, 10 Jul 2023 09:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1535560E58;
	Mon, 10 Jul 2023 09:51:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1535560E58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B63A1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 09:50:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E60DD60E58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 09:50:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E60DD60E58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pPTZ64LMFajh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 09:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 175AD6062F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 175AD6062F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 09:50:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="349102739"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="349102739"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 02:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="865287182"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="865287182"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2023 02:50:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 02:50:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 02:50:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 02:50:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 02:50:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZ7+tSuMTS03pCs3yra0lAb0BLoctzFad0oqEfHOVijHefqsWtzZ9nzZNFrom2UJrhXzHRG/+KXQfMiRV3rZ96u+y6TrgvQWTAPfQFPJS0tUkJITjwh4qAj/gt5cay31NNANc8N68P7Pwp3EY/xOMG8VKcOVWVcAHeCoyREgH4zq+xuHsgkef7DE/lHe2TjFCoV3pPwfQw6ztB2c9sDQAli4gt4g1T39CeH4BjNW59g81viiQVQR3uMzou+eCLBA0UY8An1m2tcwtYvsyuvHmbKfDYIgk5VW3zPplTREYglsufAshYlZt4MB45QcswOgxDszFXTtPH0PCfXFDtXtxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGl7+6ORT2MpiMtxV5Fdnf7mAPRi1F8jNJ2IGE11weE=;
 b=bKmuFWS+SXJ8ls8aqbF5E/a8NH1vudAFk1joo4hFenNyQeT7MHIIcQee+wuem58f4I6FGAChEl3J/3y/gZGG2jmF/S42h3nxfFsyrRZqmb5VcVXpkcxEy4053JDidVZaBQB+FDM3CiHZ8c97l67QOwDsgpqJH4BebTSPsiVsnc4qANdEuDsdsFhBTwCtl+nnvkNP72rrlnegCY1C636Hn5K2CZKFAAa65zfN84qeGK6p2hss/Yiaa36cpV+/7oN/IYd5qp2OKpfx1kaW5gL4SxpUt8U3SlnpxBCjXwBFtY+5WB4rM3rKFYaW6XkzAFxgMzld25MImaHbgOfhwDPTiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.30; Mon, 10 Jul 2023 09:50:48 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 09:50:48 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v9 03/10] dpll: core: Add DPLL framework base
 functions
Thread-Index: AQHZpc/+2+ilbDjNIkao6LxAthBNeq+hd5yAgBFjgzA=
Date: Mon, 10 Jul 2023 09:50:48 +0000
Message-ID: <DM6PR11MB465793F80239C1C87F1C095A9B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <20230623123820.42850-4-arkadiusz.kubalewski@intel.com>
 <ZJ09N2TI4wHrA4rB@nanopsycho>
In-Reply-To: <ZJ09N2TI4wHrA4rB@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB5325:EE_
x-ms-office365-filtering-correlation-id: ae91bff2-2a2c-445e-757e-08db812b239e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: igSfhPum8FbdzVZGmzgEYpxDi88X0xPLqsFo6bdHHyhxsaIcLXfq0YvUPIycpGUkIVAhx4HxzDNpCcBxa+1jCiaTpBgtI/Eh0OD76U7XeAIeH1m12SaudbJ7YbIuOmYnZzDji2w+2Q0Ayw4kLgMzNcSDvtj/OQz+aZfEZNE8VD9r2MVC84A/lYYJCOzOD13h8Mh6MBU5zC+BqdkR6T+lYP3lqbHGPD2PqiH9u4/0CnT/EOnPhgk1q5X4x65iihV6iMBHtx48wXiMMmdzPn+25T2QKUPSHoq1fhKrXrtMh1CnlvTK3ciFNPhHJQ3Z7L5wn4gKr1h7Uc1iaN1ZsYTDmkF1IlP8TPsDuch0BNCd2Rxp4PBUKbEnNHyId64NhPX7e/rmyqqE/ELnFDoVKGKYwOlngEFRIqp2IWgLgmf7il8ITiDroVRE8TA1c2KKbKw765ZM0lR9ADqGA+D/rw9KD0gkXHjauJiffS1VWmX8eiLesx/d++WtL/blbt8o7qPRUvlWtw31k3x541chPAcNWafNXXE+sTbb4krewImnnYPV4dANJfRaxnNyVG7fuQILgu0rWbFtOZfgK+/cdvHN+aFbltjiQWgdXn2GbTQR1w5cXdPS8mHydaaHsjDKGeP+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199021)(186003)(9686003)(26005)(6506007)(83380400001)(41300700001)(4326008)(64756008)(66446008)(66476007)(2906002)(66556008)(52536014)(316002)(7416002)(5660300002)(7406005)(8936002)(8676002)(6916009)(478600001)(66946007)(7696005)(76116006)(71200400001)(54906003)(55016003)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uV90vHJJqg7yEP4wn2MQD1viUa+a6TEFMAi3sWQFCGKBscG+Ru6I13Lv7bpf?=
 =?us-ascii?Q?QKfJPpGWNJcTsqgTAMKG3KBwBkprDCHBGzeWJkqY4EZ9OJziRPrZ1EDJPkAZ?=
 =?us-ascii?Q?ek52iJzaehs7kAaqvKayT51IlnB1JyilVFvX3nV+qSF7duPqd6A7zjUDO62k?=
 =?us-ascii?Q?EwyCBbwLuOzW+SQsz6OKlmm9wS3I8tTJq5BtsOFyR84mDcG0/1Iwr/Tdwz3f?=
 =?us-ascii?Q?rR+ZPJZ4G4WNLT2vPyz2nHHjX03uwcFk21Rs5QuKtN4MQhSS0WMwb3wmafQy?=
 =?us-ascii?Q?nHZvS7z56GxhQU/8Kp2hqP6y0yq1K4W9wKq0NPOM0cVOVnWHXJEFMzc1oUP/?=
 =?us-ascii?Q?1r5ap3fG7u1xKveACpW13JS3bucGjpPv1BsCx1oJVq9oPmsExVkYlP0WOAmR?=
 =?us-ascii?Q?NSoeg7uQbO76gLWnduV3r+UgYmcqDDd3raQyC4sJd/OcR00wHq4QQxu66p4g?=
 =?us-ascii?Q?ftfm7gdk9Zj6LF+Dqa/RXL+pC9AYQXqkM4QbW1Nf3fBWxwDZbZTYmYextKGU?=
 =?us-ascii?Q?5PC/i1o2pP6kllWCZkKtGg90zYIzv80EJ1llRPYmQa1UGxNsDqNuE7k7zVCb?=
 =?us-ascii?Q?XD/TdM59I6rXSqsRaQWt3o0Rc3ruU21uZ7M08zS3DSc1Re+NRRjfTAijbwzz?=
 =?us-ascii?Q?y/YWPru1wytv/dEVmq+ZHS8qis3qIQdIob6s5aWFEHfgw8u5ve2nUvuo/aet?=
 =?us-ascii?Q?VHGbVh7J7I2Dam8ra7AifHqQx6KOnwLIoTZH35dWNeOJ8FUizcfX6bc9cyzq?=
 =?us-ascii?Q?XNk6ZYGPOiw31jQyqdmOZGNIbvsC9A6t0t02rYrPvr6CfIFws7Lws6KcUO+v?=
 =?us-ascii?Q?L2snShiW18L2di/T71AlNNPMedOrbaJkK4PqtbKg0YWPETP3bRR56GS5UWUs?=
 =?us-ascii?Q?bJv1bZd89BymITfa8C+lhV/4jY3vsG5b8vvmIXqTwJDLfDScXWv72Tg0fhju?=
 =?us-ascii?Q?Ay4A+eprJIepSigFJ+eayMXHQFHcF9Z9pC5Uy/4gruthsz/Z/llMvN69Y7Lc?=
 =?us-ascii?Q?VSw1L9QYTirZ4OLhXPHNA1xmbWrrBaL9ezFvXY+vg7pML+z0GRoEAnlNsn7r?=
 =?us-ascii?Q?9Fk6c1h9+NWEARvuC7FRA6dZdB3vQbflfL1yzmilqP3eU8R7VRk+j/pH2KMQ?=
 =?us-ascii?Q?dpFGD/kdbkiSMhcJSUzfW2wxrCYSuQLg9AfXomhOppkmOlXnwSR9iNUCJBqz?=
 =?us-ascii?Q?kyX2/2tHjYniMLsCxiP/IFDXTMYH6H/3ssQv12PTZq6D58VOeB3P6S7MMaqp?=
 =?us-ascii?Q?Et53Qr0iglWOJqIwLN2oNvyFl//BlLSesg0gIdlWqpQfD9jbya37f97OBfnQ?=
 =?us-ascii?Q?e37AtPJVl5RtYw9gqMQlICLmirGAvqRsjjAIPJiKhs+3N35WEcpTGZKjtk9i?=
 =?us-ascii?Q?raFspzt3V5t+I3aMUnY82OX5nuk7FLWNp4AqFr7lxqGgHZ5o90LEy07Lv345?=
 =?us-ascii?Q?qV1dHzwl1zkYo6yIwAQ7j6ObtdVoP5ikic4FLMbuCyRQz9NUAKwiwL56nOkW?=
 =?us-ascii?Q?Kqse50lcxNMQM4xP9scU0QumBvXhm/mQ5YicoJHHkqGsfzrvKI+InrYaqflu?=
 =?us-ascii?Q?lTXJfAmgjmz+PbthLTn5CLATX9wbmsWVJ6XUeziop/wfJeL3SqOGBndbwcKX?=
 =?us-ascii?Q?Gg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae91bff2-2a2c-445e-757e-08db812b239e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 09:50:48.3776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vdkURKb0JAZZh+vIrn+KcGUNvnZERKJIeaXIS9o+71UDNmnI0p4QBvpgZGrsCGaW3NuoxHC4f6llyrAsVEgl9bqkMrV96ycYdApZ/7vqpRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688982655; x=1720518655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E2IK45v9icWY1i6ACfQDVoL1dWsBiiU69FEJa8Njl7Y=;
 b=YqxHiYE89Z8xQGEP4mgl1wLi1gyKegTRgmQR35bYusJt2Pzvkt4l4JDj
 89+QelAqXX/OCKTaWJZtinuO0eMZ9I5DBRf8CPmO5UDiCeEuMhRTNOm2E
 o/XdSpEsfOEE9m9rebotkB+Z4JwJbb9OINDfW7swQaJWip2K1OiNQypio
 f5rz8lxszsngOb7SdRYi7ZalnuVF4WEE+EOAAhEfWHl6Jdqf4vxPCA3p9
 VuQQXGmZDXg3Qk0zsjtyEIaPs/oaeYODRmq5gA5WnkHhORx0iGSO7cD5R
 Zok05gjQDoDk95bE06IUpWdEND+aYOoqCdxdNMOjIMHoz9nTsXQ9WG1iE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YqxHiYE8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 03/10] dpll: core: Add DPLL
 framework base functions
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
 "kuba@kernel.org" <kuba@kernel.org>,
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
>Sent: Thursday, June 29, 2023 10:14 AM
>
>Fri, Jun 23, 2023 at 02:38:13PM CEST, arkadiusz.kubalewski@intel.com wrote:
>>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>
>
>One thing I forgot to point out the last time:
>
>[...]
>
>>+int
>>+dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>>+		  const struct dpll_pin_ops *ops, void *priv)
>>+{
>>+	int ret;
>>+
>>+	if (WARN_ON(!ops) ||
>>+	    WARN_ON(!ops->state_on_dpll_get) ||
>>+	    WARN_ON(!ops->direction_get))
>
>Please add check that you don't register to dpll instance which is
>unregistered. Similar check needs to be added to pin_on_pin register.
>
>Also, make sure you don't unregister dpll device/pin which has child
>pins registered under it.
>

Fixed for v10.

Thank you!
Arkadiusz

>
>>+		return -EINVAL;
>>+
>>+	mutex_lock(&dpll_lock);
>>+	if (WARN_ON(!(dpll->module == pin->module &&
>>+		      dpll->clock_id == pin->clock_id)))
>>+		ret = -EINVAL;
>>+	else
>>+		ret = __dpll_pin_register(dpll, pin, ops, priv);
>>+	mutex_unlock(&dpll_lock);
>>+
>>+	return ret;
>>+}
>
>[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
