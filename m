Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF35AE755
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Sep 2022 14:12:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 698CB41761;
	Tue,  6 Sep 2022 12:12:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 698CB41761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662466341;
	bh=RnaSCl+AD0mVHIHAPScyGrSXVj/xjNbeGG59qlX4si8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PcdnC0StDJ9lcWpmBMA6UUlyh2lJnZ8Wpx528e3wAFpMDpSRPcGfymTXN8jPUnnXG
	 NYMlskhUfqV2Dqy2M62oZyR8duKLlfyxjXV1jm3hT+Y2cr+N/RySFN/0gsg2lE0aJf
	 7yxqRo0Bj3PPXMSTCtf9hh3BTQBQzAPV6h8bXEwz3wRp2sUCaGHOdy8069UFXpk1Ge
	 Tz4eteRaYM+FGGS5fcebEEQUQfbErnvEW2EPNmgznbRGWr+IS/e5GeDNDpYVqxk7P6
	 dl/GO/bfdPFSHdO3M0MbW6YvQ466EfjUXSHTJAPa+1mMkUFQaBmSnPxmWDkTuE2Ich
	 yityd6KGmImRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mAqesow5Ip9p; Tue,  6 Sep 2022 12:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC8CB4175F;
	Tue,  6 Sep 2022 12:12:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC8CB4175F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E43291BF20F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 12:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C36734175F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 12:12:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C36734175F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXg7SWli1uOA for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Sep 2022 12:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B33044175C
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B33044175C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Sep 2022 12:12:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297361441"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297361441"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 05:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="739882698"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 06 Sep 2022 05:12:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 05:12:12 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 05:12:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 05:12:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 05:12:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ua6xiW5CGRVOLHaO9fIgpfxhz62tKzvDUeWdTYp0Us4qf8CBkgkWNMbP0YthRyariIVbOjCn5xjrBFDL0VihC/3Q8T/QYPfoVAabdlNGVY1S6BgdvaDdAzv003A4rFP6ZyTl0orPno2Jw1RyAZQ9mMActAH9swd/1XiNCxfssaL9w8Dg1g1Xx0ZpjYCspVds8DWAxcO+tK22gJwixts606mWWeawp2Co850KibMNbXBXzABsmlPN5XJONaTXot9Q12u3TiOwy2CWaKYh8UrlFihf1Vq3jF/C1CXwlI9PsMGh48PNg+vkjbHQoEA6+Fy7907YiukWLA59fqO4gScrqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E98sw75vxnI/oJcb28tmNal0jyxP08UaH39ZieUfsiM=;
 b=GdACM7MtOpXPsmOLc6cRY/auOU4/zwSQYyx22usgvnyVATKvs6GKZrwKN2kPdzeIOqKi8jkykJGSF690sz9wUEuUhzLsqnwe+FGpUC5QcaouCdMOY7vmVKuYOphSayQHO5RSEbqwvn5O4d2iYBoN1ydwqNvrLD7MJwoor2CWt8CkKL+WQ/snBJFO5rEC7ZjVjmQI2fjDog3mcijgwEqX04emB2kIwVNZKCbI2wGgFsKSmN2Qe96BUfW6XXWKLSRZIq6ZoUEnEa2YrucH1YcxgysreiZxUQ7R3J1sRCvyQ7arL0u0LVg2Z7hAPr8uaySz/wWehn0lbHgWR8lvrOxT7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 MWHPR1101MB2128.namprd11.prod.outlook.com (2603:10b6:301:55::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Tue, 6 Sep
 2022 12:12:10 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%7]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 12:12:10 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix change VF's mac
 address
Thread-Index: AQHYvUEwZ/+WEjyjpUS6CUoQ2CS4B63SWS6w
Date: Tue, 6 Sep 2022 12:12:10 +0000
Message-ID: <DM8PR11MB562163192B470C51E8854907AB7E9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220831135243.8623-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220831135243.8623-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cca970ea-29ad-4baf-38b3-08da9001064f
x-ms-traffictypediagnostic: MWHPR1101MB2128:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JdzEjatJKHUUfBvgSnsfUoAxw1RjSO+jjHYne//wtugFdPqCEJo4HHLQtcC0qxdUqNhg8l04pHdR8NQqRuQ5TiwNeRUuvEXYzOCRMhXilpKzSmsO7sew0L5p51S1juZhSpfr38XpNIs1oOs7V6XH3/LNMFVESuJeUfnVS1tTJ88ulbAJnh4u2VvxGXWYpUn0dcSU/egEjA8l4aMFjtfLghVZXCgfzNKHUKA6QFl96geAT+aqnVhPRkOJxRSMtCvWl4k/mtTKSFKD4SZdRtgoRwU8qXq6blRI8+NHl5OVjBe2XK4ZDj9QaFUf/WN0/8drrWDu/fRqHkX93rV1yoz/FHvptPfBydsXfi9TRVcwVWIVDBveCt5CvIfXeDyAxezml10MhSGUlFb4n7ouVq1S1/AEAiXW9c3Dp9SRcmYjRL/v0jBpjXgvtTYa82zc9nk/vdveeGYlFZO7/4cj1J+bG9E/DbDMchzWjNtdd41h/zAM9Zt7lhpo5HC0gh7oMIglBdgErnTLKtlMp7Pw5UBBHPZvz2coQjD0+HYL4kuSKTs4Mj2Nb9MC2x/XoNi0Iyduw/3H0UYNTcA1RLDuhcAx3rgV60h4ktxgXjDgFirbtXhqLelPwdbJXZe3WW7rpyKj+8Nx0+MiQ+joAuZQ/HwUCLY9u0MJPXJW+dJi+Xh4TZCvMcJX5S8OsR25SfQTBFmFjSlk3jEYiux15J5sF+TENjYIcPIQHUshxY1ZZWiQxWktrIlHl+2Bv/5btAbxUyTJbRyDYvX1cRSrwdk+P+6xAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(346002)(366004)(136003)(54906003)(55016003)(8936002)(2906002)(66446008)(8676002)(41300700001)(52536014)(66476007)(86362001)(66946007)(66556008)(64756008)(76116006)(9686003)(38070700005)(5660300002)(110136005)(316002)(33656002)(82960400001)(4326008)(186003)(38100700002)(122000001)(478600001)(71200400001)(26005)(53546011)(7696005)(6506007)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6OE8U6TRJeta5hXqEADh2Y5efFlhpx4a0ClziwKNc+Nm4EpN1eoBqTg+YGVv?=
 =?us-ascii?Q?X2sZjGTs7v/CyD1uOhqy7zO2pqWO/wGDCpK2jY1/VW7HpoFNc1VVhy3AXWej?=
 =?us-ascii?Q?8h9VFmaeYNQ6MZWTK51v5oBjX8HnmZiD6hoYkpQrMVcv//ui+SUQ1qu4C0sa?=
 =?us-ascii?Q?RRAazn+dZUICDQ5aDCyIqhdbwLgAryFUzAVu36U6kg6y69juMYJ3I2eEIfeW?=
 =?us-ascii?Q?h2JkeO/dU+zZubwmmykNhBNRCny83qIQC0V9PAUn2lR3ou/E8TTgMP/ZKkcp?=
 =?us-ascii?Q?ZTLWZnE+Tf4DPrF9JCGCCRMqEnQcy6NfpC/JRGmdQ4oOmWmAHQFxYX+GeVXn?=
 =?us-ascii?Q?bQ5QiXFA4INczqt2uETqZU6fo69zAIcT+kp6qI8rDiIWMO7zJMHQeJh2rMqZ?=
 =?us-ascii?Q?NguP2dc1frRqDSaR/VxBsJ1utQr0oG1/j2uB+CRdpK/S3YVJQZdclFQ898HK?=
 =?us-ascii?Q?lGyfYamTZ59o3RL4xQF3dx9hma1miXVU5MB1UkW3y5hsdMSxg853/ByGWr4x?=
 =?us-ascii?Q?9gcLnSKcAeKTnk1F1unMHVtxGKCM5LHWvXQFQo2Cm5bEpYiXPnTDEQ0denOB?=
 =?us-ascii?Q?5JIhDeMU5CUBMCfHyGeYKHtEEpyLKX/zpoBYF6AttC3b6uq8elGMPkqu2Q22?=
 =?us-ascii?Q?ZyLHgerG++jVRQ3hXcZSNnIcsLUOEtOg1Xo2R9zXtoM6Y7CRNVHnpC5vBSVV?=
 =?us-ascii?Q?bZ5VZz7o8krK5DMEv41cy8uYm6VEfbBlwojHX2BoR0YFuBpq+YWQ0JHg24Ua?=
 =?us-ascii?Q?VQBwvBj3QYql5/8NdXEbARKtZDUZ6b2kMAHen7gy22SpoIejesHHiZxEHqrI?=
 =?us-ascii?Q?GtEkDWg+9hmoaCUJNsbU9UU9zf2cWOUu2AcfqxdZE2Y7Z2ites6JAZ9swNbi?=
 =?us-ascii?Q?hnE13SjadiWWPQWvvhG5XkkNdsRg2JWg+DH/1B8Q5wUUU2WWR7hCiLSWoEQC?=
 =?us-ascii?Q?CeN8XNKz2ySlZ48kw5ZxXiQkaQsTFk45OcKGa1+bq7wqewwOlruZlsTe6NZi?=
 =?us-ascii?Q?3zauQCSt3LabK0jINf8AbbUEmwAJvrKiGbNCPu7gKjDleKuncC9VCmc29A0i?=
 =?us-ascii?Q?35l/OVIGfCZam7oj0c6GELEIpgBgTYn1KQ1ikg5rpWUGresJ40rh0SSBFeRk?=
 =?us-ascii?Q?BSS+SeO4V4rRox/xDVONCJyPoalAnjDMsz0qJqOvPD4BCnyYzAKBnO8wH3Hi?=
 =?us-ascii?Q?WANU1dqXTfFojkDcHLBTqOMC7ufGLnIBjYYVQeWvNAuFYK7gRqdDW6Kuxy61?=
 =?us-ascii?Q?kuw8hwJeLG0UeS4tbG2XBmDcpMv1xCLe6nljfpzcjMCVgauKwzkFsy7G2nl7?=
 =?us-ascii?Q?p7Rifmt9lU7XsQonyGIm/5JpgStr76AL2P0ukPzdRT+oVc5ggGmTRcZqjONo?=
 =?us-ascii?Q?A3mdA7dY++sq/yB7PUTV3ZbnWs9OOP/Ij9RNcsY1LQ/61Q2lSdErheZ4atb6?=
 =?us-ascii?Q?jY5knxgxeuQsjgJvvPwIwUQOftcsxVPx8v9eACfkiGdqqKmXp+lMkZnxVFNE?=
 =?us-ascii?Q?FJ26fkbRgLvkrT5rKJrglHp8xSOa6wSw/99rYWVMOsxGAZ+WZ8de5neF1z7J?=
 =?us-ascii?Q?KTlXsgIH9pMMn9R1w4hTVofe4ac7J5SsPxUixNetukQrf0ZOkEHAiek1TgjX?=
 =?us-ascii?Q?1A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cca970ea-29ad-4baf-38b3-08da9001064f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2022 12:12:10.1086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upAwDNwT6cqijfZxVEdUCBjhZNReEUPJn37TNRdnfmqtbjj8KT2ywjRj4x1f4GgA5roBQaTXPc7w1BJMUkaFa63bK2DDWDeOqh35eHJEdmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662466333; x=1694002333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I1KLaP/bOXE9Mk/pzTd+ZUCR4Pgg+hCDYTuQrWdmXu4=;
 b=ED9kJWjKcD4ax17lA/IuVL9jTw5Ugw13dd/S2Lzr6j3RA2AnHv1LCDwD
 bKb0T/SmuH2Nqgkh3PVtFmTLhmIjkgYnDafAgaR1U8atypF273RbUgkyz
 zV6XW7GUfwRNNU1J0c4iHSUgoUvEcMIqUtmSisEUZmowAYw51Qc34DZqD
 02MBSJx5yvUwCgldzrFkEvasrTvGDP63QvVCZPTehFk77qCCTdJ5MyrDz
 8tmpRjgn/bBrDc316kDdlqaI0T33Lk3tHe+LSTtHm0/IRufKtgwxcJtmB
 VGWqeoLFNdDKHvwgP+fsOIcaYrqanLaxwsspzuxTksgPQCIXu0doMwgtr
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ED9kJWjK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix change VF's mac
 address
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, August 31, 2022 3:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Zulinski,
> NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix change VF's mac address
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Previously changing mac address gives false negative because ip link set
> <interface> address <MAC> return with
> RTNLINK: Permission denied.
> In iavf_set_mac check, if mac was handled by PF, was on start of
> iavf_set_mac even before mac was added to adapter's list of mac.
> Because this check returns always true and it never waits for PF's response.
> 
> Move iavf_is_mac_handled to wait_event_interruptible_timeout instead of
> false. Now it will wait for PF's response and then check if address was added
> or rejected.
> 
> Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f39440ad5c50..94e4cc4011f3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1077,7 +1077,6 @@ static int iavf_set_mac(struct net_device *netdev,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
