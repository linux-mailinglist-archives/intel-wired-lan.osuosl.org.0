Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D845B90F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 01:25:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7FB960B31;
	Wed, 14 Sep 2022 23:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7FB960B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663197908;
	bh=gpmYgMu31nm0t1idnjqVhhgQ3PWUENiaczQT9Qk0MDk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9UU5G/T1Wn3DEz/S6QpuHj4WaAN/PgM/hH/Be9nFIUEhU0mc8SQZcRzCAdWgiZl7B
	 946YFeEE6D3lecxryAElE7VUAo4JgwDOkwkJ+OA80Ei08eo69YCNK9/bvuvFIRqwIW
	 JIf5mE7TzOJc5iJoYQmB0h/Sno1YFCO+Foh8HeUYNbHhdKpJF3zyEipjjLSz+4MXVu
	 k4b9V8CO+FNFB74gNU8+WlICCjZm1FFbQrSLPHIjBJ5ye3agkgoxnqxYVI4/KkIEvw
	 SeW//NhD+pjswLc+YoMezW8VExmgMrZthjksscuLA0d3FCAU9sfxzfCmvOODVYaRna
	 c80qv93Qxnj7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id teFyaGhhOoIF; Wed, 14 Sep 2022 23:25:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1066060A81;
	Wed, 14 Sep 2022 23:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1066060A81
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57A591BF59F
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 23:25:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E48860AD4
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 23:25:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E48860AD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Qvr843trNsq for <intel-wired-lan@osuosl.org>;
 Wed, 14 Sep 2022 23:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47CE360A81
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47CE360A81
 for <intel-wired-lan@osuosl.org>; Wed, 14 Sep 2022 23:24:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="360303321"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="360303321"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 16:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; d="scan'208";a="945706498"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 14 Sep 2022 16:24:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 16:24:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 16:24:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 16:24:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eplohJfissR++RVlBpNf4RGVzNTfbP7CvtAFpoT1IKjez101PNJIXnFuevlNt1SolFgVhjbFY6m9UbExaBafKPT1ynCOO1dIz0Cr7bqpkajoT9Q/E+YnMgLEzRU/Yvb5FXFgxJJpB3O30SR7vXpUD5RUAIWU+pFjjdaLy/ey+6uk7eJcffe4aww2rHT1p+b8azDmhESDEHb3LGnifevGrGGBIPL9NNhnKQTI9Voih6t2J2OJ6fa1raPKFc6tU1/HusEKHTuVauRLrUaWEnOrqHp9+kZk792Uu9ZBnV1mFEZiNyniKYKDxUO0A96DK3VJvZuECBLZ7t0eyjQ1a08H3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89LRsqdiyYpDNrFChSVXqnk+iKHN+MzKWmlBxq98CRs=;
 b=OVRgcPt0OuLstJ4EeNHDkiCzJnJGQvkz0aarMCL1m87bcrX1O/pGo4O33hwQMi98RPP3jDT3eulnSD/rIpzIt+nzzl4e9okMujdNixkobQsDDLxzeOBX44vGtrJKinRHHRUPDzqciI9rhB6YaUPTxv7UELi6NrG++CgsqSmRZzfPijoukoyu0nhf0KmciIlrtGNZYgGNV6AghaP5FKLALCgSfhaId3tnJFXkN4gXFNXVLlj3FEb/0kuhROVL4FSpMu1LrjtOAtUuuiyIIiV79VBxR0kPVg+ZvK7AJThZTuBbgMORHj5hRFGWZ2aDdEUFgAEAl7y1ns+8+NdBBomo9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SN7PR11MB6773.namprd11.prod.outlook.com (2603:10b6:806:266::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.16; Wed, 14 Sep
 2022 23:24:48 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119%2]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 23:24:48 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
Thread-Index: AQHYyElhgYhTp8M4U0a/oNWBya3wdK3fSOGAgABFkVA=
Date: Wed, 14 Sep 2022 23:24:48 +0000
Message-ID: <SJ1PR11MB6180E0B962FDC15ADC22649CB8469@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
 <87a6714w2w.fsf@intel.com>
In-Reply-To: <87a6714w2w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SN7PR11MB6773:EE_
x-ms-office365-filtering-correlation-id: bb1ab7a0-5c11-4f05-d5df-08da96a8510a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OjvjbYDHoyon/SxayE8ZHw93oAjvg2tuGSs5iT9FGVnwFKGfxLbsXlJeg1NOy2yao8lV3nS/YgqfphbU6VLcwTtvJ5EtoWO/n/oNNeSLdX8z3mwZmS9WYphHenDZgrol1M9XIx9nHQqifEsS2np1VlFhEP9fotuS9XunSqi4/QuWyHOQRW2mAliLuPLk2gBKA4cBZZYHUHCirPB9RdHUPsO3SigekRumMXCtkN3fpreqnZDD/FpxJsGgk81XSj1UAIxKQdJkXJJ/T3d4huPviVpkKWW+U8ENTwzX2pH0OnRuW1qs4Fx0IRFptCrikjTi2Q2I6ws9jq4/B3htqt0uD22eNHdtbjtbM2ty5uVOLIl3YMBxwF2zgG7CGORfXzvQid4XAqvGEmDJ3YA1Kgr/E+toPUl0thEVkH/Jglyvw5ixZueYTW/uyopi2Qjuc2h38va1k1qmRbeU7MdU6UI7ZSdS27Jgt5JuvgoN+oUFF4cnupSzCm08WcZw2Vj9sDJRMMT+LpHDionN3k/NWROEN/Bt41RtS0tLpbhQJRlBztkpO+9/DqYHpUEUGzoyEl6dvx4x8z9e5V0MuDNxVqOx1KMhgG31CLG69xXlb22GOWlZL1/iqOAbom1dMQ8dFiC9V+ZIQjiVP4ghBCoO1csWWzjw3jOxPaIy6KUupt5sS8Q0qQL2r58CTI45dLJUuYlWNRux4bjRBXwJUXA8wULFlZc7fAqQtVJj0RudEzu9/+NZn2ttXlE8JCiFhIhmgusbQ2VfjQ4iSbwz/11p66MaVrMqJx+4Ob9Ui2vi/pKASM0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(376002)(396003)(136003)(451199015)(66476007)(41300700001)(55016003)(45080400002)(83380400001)(186003)(53546011)(122000001)(316002)(110136005)(71200400001)(7696005)(64756008)(82960400001)(966005)(66556008)(76116006)(66446008)(6506007)(9686003)(478600001)(66946007)(8676002)(4326008)(5660300002)(52536014)(38100700002)(86362001)(8936002)(2906002)(26005)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7ea+vQPLZa8FlDSE5gEhkbZU7VuKayoQvMRH5Bfkm310U6qi9T//hABxJFsR?=
 =?us-ascii?Q?J9aeruFfS68RuG1Ckoxs/igvy9SjO1y6cnli7s18VfutEABRt+/qecQ79W48?=
 =?us-ascii?Q?oOG0hv/PeqoeHoAQMiZy5OL2NsKY9LPpHdm/i78VBMjqEfMFKhCHDCLQeZ4V?=
 =?us-ascii?Q?He+GA24y+gQ7bz1hITZIXJfDXRtKA7TJ29FDiLV9ONoId17hLRETFLH4viIx?=
 =?us-ascii?Q?/87ZaJIFAiTRT8m6jHdwGcI/7NWT3LLtK6y9ofsy4+D4kKY41EA7WeMwJUgF?=
 =?us-ascii?Q?V/6cAzZea3VxHWT8IiwvE2L+iQDxhhHSI8jFfeIpobCP6nzsUXxWXSOov3NM?=
 =?us-ascii?Q?kIIsdzCNXDhAi3W1Y/4Ps+wgDvrXubYLzkFUCVi59vIJDQOEMQm4GQIJYLvS?=
 =?us-ascii?Q?xr01FpplhqHo7evGfSSEemnPIA5uv6yvTLhVvCFpJfMMf+MAJD2pZB+R6j9e?=
 =?us-ascii?Q?S4vB3H51rEKdbIqi5ycreru7nTUZC5jjCAMQkKIeGTybGA0S0w7LkbddLqKs?=
 =?us-ascii?Q?kybrx9J6EJjnY3FiOPO7Rbdf6li8p5IFizYwImT4wlW/YrewpeC0QZ0V9W4m?=
 =?us-ascii?Q?VB+ugPjmKKK0IlJFNgxLrA7uajS77aWBz/NlXXGpggbonZFYm2lcV/K5SB08?=
 =?us-ascii?Q?7Qs+ImLSCtQxEF0SeP/PidUGL6GItOz9BdGi8Fkx9QoCJfCubN/HzKJqYbUY?=
 =?us-ascii?Q?8Wt1lvwoNxa7Fin7UdIQ13bfq/amf4KZ7Sko7fKqn/2YagvJBn+DRRKvkSUN?=
 =?us-ascii?Q?V6M19vrIVs3I0zh2uxYQv/NA+YJsxBmsw8Cgt1avw+CsADe1RD3GBL1vQtIg?=
 =?us-ascii?Q?ZvQti+kxxFj64Vp2okfvTg1zCvsRDovjr5yW1zWO/d7TEcWZyDBLk+7y4Lha?=
 =?us-ascii?Q?Wh+9gaxXWacaWpc0b3w2WqwK0BjcefUO3VLZGgfWOTcIj1GPAqbK/4DLpvHn?=
 =?us-ascii?Q?KCIGUNKK1k87lq9YrxmMXTaXddgI/4jkmrSZPs/6fl7q1ZpG57kxTgYBJnDw?=
 =?us-ascii?Q?zkl/UUF0GJ4gjPETboyajd9tr2UdVQSvrdkvJLLGhaBYixmz2y6dIxnf0ij8?=
 =?us-ascii?Q?aUFTKB1h5v9RsJoi/DTNy9cYsVJ5aNnwQzYQO05Tza8EUsa6Yjvbc1uo9Jsm?=
 =?us-ascii?Q?KsQ4ewFUp6A5yjEWD4rOYfhRMKcUL63L/54P+yO5Qf5nqzyA6MARa9uWd+nL?=
 =?us-ascii?Q?oU8jAiqMJjS+2NA1RaeGOfG01Ig4vBBsrf6gIsDEYiiM96vtnrbQnTWcLfga?=
 =?us-ascii?Q?0tDaoIhEhF0qPxmYl8fxFJGhgXkXeJR3dNNNotzHJjktAwkeWOuFgYAveCVX?=
 =?us-ascii?Q?yljcSh6FyF738eyf9BI/WRUAxz1x7UOu5piS0PDZVzviktB4KXeFJxHKRCwu?=
 =?us-ascii?Q?saCKGsiT88KHqc2xikLSMcU2ChFBqdE7zQB/UVmh014BNney3yYtb/059KOU?=
 =?us-ascii?Q?+OnnsGa7t9hcTXx6iZRck+svHse0TBb9RKoNWrQARDC1YSS5XrUCtgD7iEIf?=
 =?us-ascii?Q?SM0YtpQhil4uRqOQdYz437P5RUjHwhEGDeIsYiRsktRezhqdqIhHPMcruNCb?=
 =?us-ascii?Q?+Kvvi0KI5S0eGRNzevEZ5S3BSd/EEX9igpoq0y2W+f18rZC2HRMbBMREeNUQ?=
 =?us-ascii?Q?dS0zD8zPVt06Y2O/CSjJyBo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb1ab7a0-5c11-4f05-d5df-08da96a8510a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2022 23:24:48.4370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+s5zr1SMyR3bEgo6FEqKUEkHg91s7iJPrai01C6y3/zcnT/lltZquRaVBNkmS8ud3Vhb+VcO4RlJ8RgTFQKM4wTluLb4lUy5eEsn0F249rQFdbRumMmMHaUEaRMJiSG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663197900; x=1694733900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y9Yzh0nEMQcyVYiV/Sp+sAdk0X6T/5IchiRU89IF2xw=;
 b=MIH5b9lKKZDDDVYpdQTt9lVBiiconrqqXCYE7wsN1gEj3VqxG3fFMcCC
 ZFT8CaXyyHQb636BwpWfoRwna15FZDywX7YIl8iVPqW+yo5+dfoFBaoag
 KAUI97jxvxKPxyuVkbhKyPtbsdZNs+QJvApWpVdvOhT1kWdDw/uc6kO4B
 qfMvwfaFC/eGgXqjS+x8L+fLR/NKKd8LvsoUI13rn9QElTWnlQRDsrDkr
 L8RWL98bRDNrXsu5/H2P1/0nJWLlv7I11LifOvN+1U4xNJAcHv9yBQSM4
 soYyCIXxz7eg5s6vBCNhmX3Omc9B0U6MM8Nn57WEgrlZRdKt2B3kcbPWA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MIH5b9lK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
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
Cc: Kurt Kanzenbach <kurt@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

Thanks for the review. Replied inline

> -----Original Message-----
> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> Sent: Thursday, 15 September, 2022 3:04 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
> dereference
> 
> Hi Husaini,
> 
> Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:
> 
> > This patch fix the null pointer dereference when dereference the
> > pointer that is expected to be valid but is NULL, typically will cause
> > kernel crash as below:
> >
> 
> This part of the message only repeats that you found NULL dereference
> related crash, which is already clear from the splat below.
> 
> Can you give more details about how you manage to crash? What is schedule
> that you tried to use, that kind of thing. Perhaps the problem is somewhere
> else and we are only hiding the problem.

With below schedule, if you are not try to dereferencing the pointer, we cannot catch this. 
Might be compiler already handle it. This is a guard to ensure that "prev" pointer always valid
Address before using it. It will always NULL if you have 1 GCL schedule entry.

   Example schedule:

    tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3 \
       map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
       queues 1@0 1@1 2@2 \
       base-time ${BASETIME} \
       sched-entry S 0x01 300000 
       flags 0x02

> 
> Also please CC the author (Kurt, I think) of the patch you are fixing.

Sure. Cced in the email.

> 
> >  45.369206] BUG: kernel NULL pointer dereference, address:
> 0000000000000004
> > [   45.376153] #PF: supervisor read access in kernel mode
> > [   45.381281] #PF: error_code(0x0000) - not-present page
> > [   45.386414] PGD 0 P4D 0
> > [   45.388955] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > [   45.393311] CPU: 1 PID: 3290 Comm: tc Tainted: G     U  W          6.0.0-rc2-
> intel-ese-standard-lts+ #3
> > [   45.402668] Hardware name: Intel Corporation Tiger Lake Client
> Platform/TigerLake U DDR4 SODIMM RVP, BIOS
> TGLIFUI1.R00.4204.A00.2105270302 05/27/2021
> > [   45.415996] RIP: 0010:igc_setup_tc+0x2d4/0x602 [igc]
> > [   45.420971] Code: 48 c7 c1 f0 a0 6b c0 48 c7 c7 10 c5 6b c0 48 89 54 24
> 08 e8 58 b6 cb cc 48 8b 54 24 08 41 b8 e7 16 00 00 48 c7 c1 f0 a0 6b c0 <41>
> 23 57 04 44 89 ee 48 c7 c7 d8 cf 6b c0 e8 33 b6 cb cc 44 8b 0c
> > [   45.439655] RSP: 0018:ffffac2840f83850 EFLAGS: 00010246
> > [   45.444875] RAX: 0000000000000025 RBX: 0000000000000000 RCX:
> ffffffffc06ba0f0
> > [   45.451987] RDX: 0000000000000001 RSI: ffffffff8dc44719 RDI:
> 00000000ffffffff
> > [   45.459106] RBP: ffffac2840f838d0 R08: 00000000000016e7 R09:
> ffffac2840f83700
> > [   45.466224] R10: 0000000000000001 R11: 0000000000000001 R12:
> ffff9fc947765708
> > [   45.473334] R13: 0000000000000000 R14: ffff9fc947765730 R15:
> 0000000000000000
> > [   45.480450] FS:  00007f5139f4d740(0000) GS:ffff9fd090a80000(0000)
> knlGS:0000000000000000
> > [   45.488515] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [   45.494254] CR2: 0000000000000004 CR3: 0000000106588006 CR4:
> 0000000000770ee0
> > [   45.501369] PKRU: 55555554
> > [   45.504086] Call Trace:
> > [   45.506542]  <TASK>
> > [   45.508657]  taprio_change+0x4ef/0xba0 [sch_taprio]
> > [   45.513537]  qdisc_create.isra.0+0x13b/0x510
> > [   45.517806]  tc_modify_qdisc+0x121/0x7e0
> > [   45.521728]  rtnetlink_rcv_msg+0x141/0x3c0
> > [   45.525827]  ? _copy_to_iter+0x1ba/0x5a0
> > [   45.529753]  ? rtnl_calcit.isra.0+0x140/0x140
> > [   45.534109]  netlink_rcv_skb+0x4e/0x100
> > [   45.537949]  netlink_unicast+0x197/0x240
> > [   45.541869]  netlink_sendmsg+0x246/0x4a0
> > [   45.545799]  sock_sendmsg+0x5f/0x70
> > [   45.549293]  ____sys_sendmsg+0x20f/0x280
> > [   45.553214]  ? copy_msghdr_from_user+0x72/0xb0
> > [   45.557655]  ___sys_sendmsg+0x7c/0xc0
> > [   45.561319]  ? __handle_mm_fault+0x937/0x1380
> > [   45.565677]  __sys_sendmsg+0x59/0xa0
> > [   45.569256]  do_syscall_64+0x40/0x90
> > [   45.572836]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> > [   45.577882] RIP: 0033:0x7f513a077707
> > [   45.581461] Code: 0e 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b9 0f 1f 00 f3
> 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00 00 0f 05 <48> 3d 00
> f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74 24 10
> > [   45.600143] RSP: 002b:00007ffc640095e8 EFLAGS: 00000246 ORIG_RAX:
> 000000000000002e
> > [   45.607693] RAX: ffffffffffffffda RBX: 000000006321873a RCX:
> 00007f513a077707
> > [   45.614812] RDX: 0000000000000000 RSI: 00007ffc64009650 RDI:
> 0000000000000003
> > [   45.621925] RBP: 0000000000000000 R08: 0000000000000001 R09:
> 0000000000000000
> > [   45.629043] R10: 000055de7f26c960 R11: 0000000000000246 R12:
> 0000000000000001
> > [   45.636161] R13: 000055de7ecfa476 R14: 000055de7ecfa48a R15:
> 000055de7ed21f40
> > [   45.643273]  </TASK>
> > [   45.645468] Modules linked in: sch_taprio bnep 8021q bluetooth
> ecdh_generic ecc ecryptfs nfsd sch_fq_codel uio uhid i915
> x86_pkg_temp_thermal kvm_intel kvm hid_sensor_accel_3d
> hid_sensor_magn_3d hid_sensor_als hid_sensor_incl_3d
> hid_sensor_gyro_3d hid_sensor_trigger hid_sensor_iio_common
> dwmac_intel hid_sensor_custom hid_sensor_hub stmmac e1000e mei_wdt
> intel_ishtp_hid mei_hdcp dwc3 igc ax88179_178a mei_me atkbd usbnet
> udc_core libps2 pcs_xpcs vivaldi_fmap mii spi_pxa2xx_platform phylink mei
> tpm_crb irqbypass dw_dmac intel_ish_ipc ptp tpm_tis dw_dmac_core
> tpm_tis_core wdat_wdt pps_core igen6_edac i2c_i801 intel_ishtp
> intel_rapl_msr pcspkr i2c_smbus tpm edac_core thermal i8042 parport_pc
> intel_pmc_core dwc3_pci parport video drm_buddy ttm drm_display_helper
> fuse configfs snd_hda_intel snd_intel_dspcfg snd_intel_sdw_acpi
> snd_hda_codec snd_hda_core snd_pcm snd_timer snd soundcore
> > [   45.722706] CR2: 0000000000000004
> > [   45.726025] ---[ end trace 0000000000000000 ]---
> >
> > Fixes: a5fd39464a40 ("igc: Lift TAPRIO schedule restriction")
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index bf6c461e1a2a..128fabee4ace 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -5872,7 +5872,7 @@ static bool validate_schedule(struct igc_adapter
> *adapter,
> >  			 * gate stays open. Check for it.
> >  			 */
> >  			if (queue_uses[i] > 1 &&
> > -			    !(prev->gate_mask & BIT(i)))
> > +			    prev && !(prev->gate_mask & BIT(i)))
> >  				return false;
> >  		}
> >  	}
> > --
> > 2.17.1
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> --
> Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
