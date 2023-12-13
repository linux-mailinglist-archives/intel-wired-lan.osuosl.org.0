Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58F810873
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 03:58:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AA04404E9;
	Wed, 13 Dec 2023 02:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AA04404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702436308;
	bh=m6ySDIe1LeQP1Mo+CTJKTh1raxgM77SiToN3reJqJk8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TJrZsC/q36myp6iqRwmkehs7voZmsT273egw7qQLux+w/Qtyg7CUo/Goi2IJQbYg9
	 2XLvd58voOjlPHTVStUk2VqX8rgfSkJSOweOhGA9Vo5vC6Fmcx9lQMf/+1KLzNAWmk
	 jZElTh7bYUxBgXvn6HR+OiJzzYQ3tOlNBKqofMjasNMtL2PxBIZ4Bt5k+KuHxq1VeA
	 1mze//l1toO8w8w9b64IhuNks0r7kYj5YGKAQII5DMkKdAW7yQvnZZ9ClL+g5VT4j2
	 MGeF1uWX/xFlLhQDFCMUsTaMmdqwihVEmLJ2UyqQSkQNn5CYb9IddxKJhgOMBO1ZQN
	 QMDJ18JpSOJ5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3GtVfS1kyO7b; Wed, 13 Dec 2023 02:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC045404B1;
	Wed, 13 Dec 2023 02:58:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC045404B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7C541BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B3B841B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B3B841B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dppNc0tP55g for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 02:58:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D27A041B92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D27A041B92
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="2077845"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; 
   d="scan'208";a="2077845"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 18:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="947019227"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="947019227"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 18:58:14 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 18:58:14 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 18:58:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZ5MFm/7wtlZQyg1Na+X8qdAt9yRk5Soo50xKoZNj9fbjmHnHiYnIstJqn/qGJePipaoC0EgKD2no3+bK2mer+8/WWhGC5ZHC6sYqrFF2QeJOHTcjKluqatDQXVsnArkfeznhQXczYE+B6kqDHqdETvA+K4SohtuwqELZftLCr3Ce4O35yh3uwu5crcm5Usg6uB0YLUFKRvjXaHShtFiU+uYnwhmkkf8AViQZJ8ISBhKyqdb9DMf+NAwVp1cyfen6HWRBKUisAvZcIn7aqmjRIQY9wqFF30X74BRmfCgQ9jcQteCld3gibgkAar8zYy4nM7evAj8hDF2uF3CaimnEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bACu4TcLUgex8lymoc4pgIuXRIybf61cyJSQoi+9eY8=;
 b=fSspDflbi1CJ+vCgT5IXY+5LR9r74tu/CpRewB3Uq2EDFczCtziKLLW8Mf1J14EujybS5dB3qjg/HGNmzdTM5U7m9ionOn7n+AwZxtvS2/x2fFVc0xAh5VWwX+7nOiUu4misekRhECM9WMIdZjIwkMd5AEnbB1j7L56JwYwusZkSO8L9mclVT6WQj3hzWXSR5bu2KSDboz/RSTfOWWxkgE5hRxsCt9S2RPoNXc9GCjJfQytTIlljXIzGm0h2rEGAyKDMCm0pLUeYm4ZGm0RGsyTZCBr3ixyYnrwWa1TQ5C3vZP404Whzwfva2QUEXwahf/XobLPoY/PuuYWUSgV6aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:57:57 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Wed, 13 Dec 2023
 02:57:57 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: fix pre-shifted
 bit usage
Thread-Index: AQHaJ9/pWl5u4L5Pz0K+EE7CErhMH7Cmiz+A
Date: Wed, 13 Dec 2023 02:57:57 +0000
Message-ID: <BL0PR11MB312262C210E071AEF477D7DEBD8DA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-8-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-8-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: 8276c0a9-d5c9-410b-141b-08dbfb874f48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: de5JCEw21Z9DsxFv4uDkNRwxqjWK0bV4mWAg/wuNX3NoYOu27bfdn5dzOwO0KqiN+yOK2v6D734iljrdiBoEIBY8FkXxaLZnI2rG9K+pu9LhIAIvlIYN7Kneq4i9Z73URaA4dEC2ULRMIOpdS9HNY2WI5BvkCYc0fyXorCqVTWqdJSeymdCn61NjaFedZ/zp4gjPSU5FAjWrn6c1VghknYnMgl1Geyhqp2RVHzJkrJtEixseDg0kH7rwoaXjdYsZHvDfiyjgBwywiz7nQ3jphTpF+mJocbleWdFF0MPA+U2O9zEtg9eafr8J1g9jZt3ilJNMGd0ZX7BX5CrLH98I2j9bvDa+HLotc6E0/hJK8KHp8/u2uWzvgJDVGR3j6Q7in2JS2ctWiaLI0TU+hy21QbBoPleEjy6A3FLVol7EgY60of6aSw+EW89us/ZiiDgM+qxsEgidVLaxBCvYMgTQAgbXPW2AjVgYv9kgqLyA2HRBTuLXgjaXNi2ZCjAVfP6AbTK+6B847jBhdYlzrEsb/kzxlLrL1+Mar5oMKVSflviN/yXEHlxbrLXXoMqSAZJh95xjK/WkCeo87RctNagdBCkq94lpHGs8aUAMHAUUv/PsXkf+vldwi1VSdPCUNAva
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(8676002)(8936002)(2906002)(4326008)(52536014)(316002)(5660300002)(55016003)(66476007)(76116006)(66556008)(110136005)(66946007)(64756008)(66446008)(54906003)(478600001)(38070700009)(26005)(6506007)(7696005)(53546011)(41300700001)(9686003)(71200400001)(82960400001)(83380400001)(33656002)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x5nzR9mXfR/+9E545ELsHiQ3yB7xVNdp/sRafq3OUPmj0aiF7j8kvsOeKooE?=
 =?us-ascii?Q?NSH2hL7r+3OA0hZ228IHzYEbnAGcojOWHin/QvM1nv0Aottg+43fEOQ/mJFL?=
 =?us-ascii?Q?KbqYuXJ3SOStTmVLnS/GUTmN+rllnwurHmKiyo6RAnzko7zVth9HMPssvrHa?=
 =?us-ascii?Q?RT0eUhkkGVagNDRPQ95nwtQ3dHtywmSQpZsPzb7V3zWbHoDmU5zPbKxRqdFW?=
 =?us-ascii?Q?MmIVG7VaWPYRKMmc2mmcwp8hlsw9KpQAju2JI2FnYwV9ohE7edRW5dlZZPxo?=
 =?us-ascii?Q?Y30VYjEY7yncH0Bq0tt76SKVTsLlTOV/NiAnBp5Ec4znHfUEcUMm5B56FEYS?=
 =?us-ascii?Q?1sQsfI+cxNA7b5NaDk3ijDA0dcWjuPgdVXG7eEVygu/I+iV3uWmFQUJIaC4w?=
 =?us-ascii?Q?MaLxIxCoQI7V2YfbdcwFbG91L96sapUAK1vlXudMvoTsW/HgpgZ+HG8V1rXy?=
 =?us-ascii?Q?iMDTjEcR79rONPOTCUTk6np3MmHsveyYZStvce/+HAuCd7Evt5ie7kcZ5H/N?=
 =?us-ascii?Q?uB1F/Y+5fdtXHWw21XWCnHSSTx3YiR4CYVESnDdqYXtW6F3NvH4pWlKZ/RrJ?=
 =?us-ascii?Q?3H9Lv1FNxZnfXSyIpjBkxDwMx7/4hbWf537HQaPQLvM48o9sl9cdv6N7gFgU?=
 =?us-ascii?Q?4M2HiUVNNDxA4U7MZthLey/BsbcKHKtWc6uokbtaYW0MK+zdCqs0wwdLOSFg?=
 =?us-ascii?Q?tcj1e5ZAIXpnTbUMpLO49bs19F1clZumibGpNKOMCLJzsxZTqW5s0n+yEjAZ?=
 =?us-ascii?Q?hSu4JFHp8V2kCNAHatZpd3syxAjH6qnc5yxoKDqD0iNQaWaMGC6XA6FLvANk?=
 =?us-ascii?Q?jBzoUCldOFlyHZIkNUR1Cf1ACA0x7aMvORdFtBPY8174ge7LHbevcgQ5r+pN?=
 =?us-ascii?Q?TOw1SVparUVwbuAMhMFWH5KmRlHi5K7fVt93/WyaxsK3Yp/O0mcRD7Vv3QsI?=
 =?us-ascii?Q?QjO/KuD0qx6bfFK0cdrQMXzSHX3ugjSEVhj7OzlNdqrFLaBN6T3PmcYq89h8?=
 =?us-ascii?Q?0Fa7H4TRmRURC7MM5C1z6JyKC3Cvcukm1PWX1vos+P3J2y1WDq8WaHdNGZGD?=
 =?us-ascii?Q?LqhCnfF4c1u28hvNSy86AGVMnXfhbUjuizsBUu6Ozf1ep9jbd51u5SXZ2vOa?=
 =?us-ascii?Q?/AOpvliiE1RDWqc15SUQx5samO+MnEg0Fq/F0FlKq22nAQMvKf/SyHXQsAfb?=
 =?us-ascii?Q?xo2lSCgUWEIENSsgqpzpyEAek3sblUiD6QPGuRxPN5dJr7MUME5XYfKc/D6S?=
 =?us-ascii?Q?0sU/bTwcHwq5layNndPox414nqqDgxct1G651cJCq6ij4AczWG0RI+OGp3rZ?=
 =?us-ascii?Q?rfPw+v6Qa+csDYeR1FWo1MhdHN0ZY+21ss6c9FMv+Zzea6/b4Uwn3Xnjw0GR?=
 =?us-ascii?Q?N95C6T+FA+z1pB7uyCX8A40nWk3BsX/shAl6T13T5AjUpWxBkl5xRUNuGXPk?=
 =?us-ascii?Q?y2sPGAFn62U9VyCxbzMlLEapEakmQ9ELa0Dz5ippTUr/8+9fnRYJJC2rJocg?=
 =?us-ascii?Q?trDni9I0E9plNyNdG6ObkVt53bstsdgm+oXRAy1r7YPi6+lAmjGug4SwSzL+?=
 =?us-ascii?Q?PWkCAWAPqMY/JtxLpnOvX17cZ+wrQRzsUmHG7gsHBeU5QvCKBjT0Y+mgNft9?=
 =?us-ascii?Q?vw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8276c0a9-d5c9-410b-141b-08dbfb874f48
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:57:57.2057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mZhC5TS3It9+zHTGo/e04Vj+3/Tgm5lnsIifE1c8o8NV54QLDjuZUfSGzMB5RLjsC1lGShAxqlH4NRLGpcf4hxfSWtvpTKPntU+udVi6IuJn0X6pzFhxeyN96XbACaEW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702436295; x=1733972295;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wdBnxwbGx1IMaXtq9wF0Bn1kUPau86hS9LcGCsCfXFQ=;
 b=kqe15UXRQWCGfegWbaY3diO5QggVijsxmKqFUSSDONEhz/LTudze9wlo
 FSXOoJgYXPmt+xIUekt/G8N3g17zbEOKxD23iCCivkYuYWwXt6HcGLN2B
 H6KnS8XTRqGmtVWubXY088BObsqAisJcSepi66oFvjiTR5GQqtUeyszBr
 DHudb2ghpggrAXReIuQRnukzuOMN7MpDwFHYzOyANO7nzqKrcvTPwFiM0
 WX6RQ0unoC4WTTLxGz9GGcwnE0Jm6BL5uZ4f23AKVuU0NJha9k9/Rbb03
 1HTXM8SGm5qxt8ce8BpPMJkSM7LfzpGztFObH6J5Bpk0GfTcmdyF0tNEg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kqe15UXR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: fix
 pre-shifted bit usage
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 6:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com; horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: fix pre-shifted bit usage
>
> While converting to FIELD_PREP() and FIELD_GET(), it was noticed that
> some of the RSS defines had *included* the shift in their definitions.
> This is completely outside of normal, such that a developer could easily
> make a mistake and shift at the usage site (like when using
> FIELD_PREP()).
>
> Rename the defines and set them to the "pre-shifted values" so they
> match the template the driver normally uses for masks and the member
> bits of the mask, which also allows the driver to use FIELD_PREP
> correctly with these values. Use GENMASK() for this changed MASK value.
>
> Do the same for the VLAN EMODE defines as well.
>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: no change
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h    | 18 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_lib.c       |  7 ++++---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c  | 10 +++++-----
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c  | 16 +++++++++++-----
>  4 files changed, 29 insertions(+), 22 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
