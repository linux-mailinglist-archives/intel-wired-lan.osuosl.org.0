Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCA162D859
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE10B40420;
	Thu, 17 Nov 2022 10:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE10B40420
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668682122;
	bh=KJIfC2CU8F8AuHLU3+rJmue3ms8DW65lZUfhGORJXWM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bSwB4bUAXDA9BLXI/zHeVKEcO9LI8zmXt6yd1VTwgXgfs+4IU3M43boqOvUI54dOK
	 AS7YhOLKGY2UNYmERkkCmTJrZZNuRJRX9H+5a+RgMHgrCCG/G49cC6Y++jPLql8lDd
	 +8ORXHHjyVvUDUF6jQZAcw4JgahS8J4q/uMifS1Ukjk4Kz8Iqj4iFBe1kc9igNiYQH
	 XImgTdMHGeUdvYPUeIepGPdQTvJZ6qp+WZrOUxPBo+i116XISCngqrK3GwaX0/NO/I
	 3S10ZWIpug65MhfwvWY9Fd6i2p5SZs2+koQfuS/wJ62YiAKnvSW+oknKvId/TucikI
	 vqTd0GK6PyLXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qWJ_6RBEpfnD; Thu, 17 Nov 2022 10:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9F06404B2;
	Thu, 17 Nov 2022 10:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9F06404B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECF741BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C54DA4023F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:48:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C54DA4023F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IvCabXOeMNeh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:48:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 070FA40235
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 070FA40235
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:48:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339645134"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339645134"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="728779060"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="728779060"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2022 02:48:35 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:48:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:48:34 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:48:34 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:48:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1YeF4hW2OYpCWdK2N0T6ZY4seIvaVsQOkyPA5kwT599icfWp8bA9iN92Pdg2iKH0oAbmPwJ8pd1vNGP89LVyN3BLh/snjLHqql5eHtaJAOV4NNXuWB6eLUzJ6thTsyHiNaDc5tLsgR1lgtPbDZJZuuYFbSuYKi0Sx5IjiOvnrzI7CMtDkY+HZKQnhntZRoOvk+p22DUrWSkc9tA2AT3sbp9SbJRR3R1uu1o1CsMZ+ky8no7yRkQV5P9MH/jLEn7m1yPyOjJZH/iKcyDQQMcvoyT+QsfI9ixF9VVtBXA7jGeeTPcDDwV+Bw18W8G71BqxqSnyZUaLHFvEb5djrHljw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdft84mcfDQOjtj6ff6ucq7CYBIu2ZTfP8J6BA9bQh4=;
 b=diSKmpaBww8mJjKQYExfYeMv06Aj8TxHf5kPzvRluiRGQ0UHY4o4WEP738b0HJlPKkhYIqTkXRh1nhI5FUqLkSNUqUcDGT+kkWnDQv/9Cgk9OFKcqjvkXMhqK1SYabt082Ud0CUlGxwE7nWWaklvfEvHU4mVsghr04dHW9FaUYOKHqSYwu455FIPjjaTb0YhQafMPFWCsZesJRFb3VfQUT5or8B1aIJlKOXmS7pnaKrBt1bFes+sZSjAgOOBjQBNO+ZQRoWn7DvQHuuJgwnXBJrbBHnwoY9jBEtE1pSVqGMpe9Spe419jvHGwsRVG6yB7+NO6Gs4efuull1wmJsUag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:48:32 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:48:32 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 13/15] ice: only check set
 bits in ice_ptp_flush_tx_tracker
Thread-Index: AQHY79AYzexbrV9ofU2/zlbANNWrxK5DBIKg
Date: Thu, 17 Nov 2022 10:48:32 +0000
Message-ID: <BYAPR11MB3367F29132BBF0B95EE7F224FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-14-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-14-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW5PR11MB5930:EE_
x-ms-office365-filtering-correlation-id: 596f3c56-7719-4779-c55c-08dac8894555
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pa6SzoKe4hQiYAgDAkWpQX5vwlQ1phAKRY4RJAiYqRaH/ASsFkmwSlG7UbrvnEdU41H1ZotIOnPBkfa8SWGqVleYH/hGDvvihpcruQX8perPvJCFSNKHZdrLaXwCdl7yzQhaDsh95+KCqNDyGV85U3olf0ujWmvHg0YL8bGZ9lvQQLaFnG1NVdws1ucgRlW8/iWclaeFEckEatnbgZTHNlUXBeLczWPNlrLeO7tSjAHClnEQBKLBlsyyZr2uX+hTw/ciAurQHBAC3QngzM/BldkSAk0C+SjvXpQ7vVXaDaM2SVDxujlXvUovtKdZ8XzPvcVPwuF5Isl/mjYrdg10X6Rpqyz7zlgAmOfCcqG6xr0snGKktIm8O9A6SRqN+cVP48gwyVDHHkbZa3II+0TQlcNTG8APWnMrELS2DGxMULzTXOSBAE/uG25JEh06JZVdSkiCzYFGV5v++YyXJjQJsymkI7/nt038kNrUAD8FfordpjuE3uygFiUVxACGiIOOXz9cotqePUlR+kRVNRcdIiIfPqpOZt8p91QjwYxGbYBkcIvRdGSCC0DYCbAM8daOLLwMggVvwnxzhtvwaNa4ZoWFbH2qjh6A7bKhnSuohNhQQvEInpNHgm59ZdVzHFWdnD+U52bF2zWHtVYfrozbts1wqlAg0R3x9ZAZikKyAb4+si0Ka8tEtVbypyt9jRxX6CwLQZ6nGmr2hH/1XPAfcw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(366004)(396003)(376002)(451199015)(6506007)(7696005)(316002)(9686003)(2906002)(26005)(53546011)(71200400001)(110136005)(66556008)(66476007)(76116006)(66446008)(64756008)(66946007)(41300700001)(186003)(8676002)(52536014)(5660300002)(8936002)(478600001)(83380400001)(86362001)(38070700005)(55016003)(33656002)(82960400001)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z5V2OkUNUwRhuhnENUgddrcUqfzw5JvqkkKwqaM1CCMG6ajt4wazrIYOzseR?=
 =?us-ascii?Q?VOm6zuKZJiHq8N0fbzCGr3w1ocalJRJPQQ5yiwvSmG29CUfcKF1MLXuLXgAR?=
 =?us-ascii?Q?KF+mwXlBZ3SsmSH7CMdOINFy15+kmQ6+PTeaePQkeoMCM82Yo6VicRqL0CdN?=
 =?us-ascii?Q?paBBC5WTh4TbCG++I6aIZoa8m2R59zb5yqfh8pYNukBoNOP2JPL8qVwqxqMH?=
 =?us-ascii?Q?enis3CqQ9aK2RmyFeQh0DAROsR2B5BMVNzL3JqlEjB3YNdXY8Hx/DDI7DeDz?=
 =?us-ascii?Q?FrrTHYe0x09vVJP+FriZ8q7DQgl1XqLzh+yJMooZVz2IeU8VcmZEx+JhD1iR?=
 =?us-ascii?Q?xW/nI2nA9kNsXS6CcotYTtfQ+DAhkoRBm3nVyGlkBZMMJnnWQ05i+1w8AIGg?=
 =?us-ascii?Q?T05TPqZnkTAHIFLIHp2XcHJQqVv5M5uujqhi+wzwloKXBCez4dElWxY0mJm8?=
 =?us-ascii?Q?9zgZxsFGDCxsBlAJTRVwJ1LbFgzrQDL2dRcoDZb2HZsgHLVnIPvxD/kTDBRN?=
 =?us-ascii?Q?XQ4v5m/DniAj/0tDfi6eF5dft1XPyop799mIQMcf5JRS/zS6vH/P1ZejBVun?=
 =?us-ascii?Q?9OWUrmOOR3sY5ESj+yglWv8h7Kg39uCxWR5lzvkRCIQjjBfuUPqeoP0RkzyL?=
 =?us-ascii?Q?nsTppLjV/DVQRAAdrWVh0oRiYZwvWs0e95r+9THeJ4X3ZyaJCSv9Tr7Hpa1x?=
 =?us-ascii?Q?4htYhChxcCdPZzkjjFsuaLmWKHjQsQSYF43+tL0T7wsWTMEBc9ob2iL85KUm?=
 =?us-ascii?Q?NHT4tGVL+0+2faOOFj+tBL32HAKpeb9BQekBalfDi6ZDKINBM49tU6mtYC/H?=
 =?us-ascii?Q?dA/wpxvMWZ/sv6EDoD3WalDquGpXGm5Y/hic8njPy7W5bRR0t33JIeq/Jh3G?=
 =?us-ascii?Q?VIN2p/egB1ojUbZZN7GuhZayoZamfbnVj42vtp6V7JdXYPv3b3qCT2snNEqg?=
 =?us-ascii?Q?AZNbsgVsrUHFRA93W1bEG8Qg5gIhuEcFHC2aWfPueoAd4li/TZaa15/ZTSL5?=
 =?us-ascii?Q?TIlLpxCNjexzDoZKoZQNRSacQG1aKpDx6ZzTb8IpFJ56Huq1zEcZbdkj5xbj?=
 =?us-ascii?Q?ee5+u2CpIH3g8nhtoWHq8jcuWKs2DbRsufs3TRrv6qfOu8dTxu8oADfNKi7i?=
 =?us-ascii?Q?csbKyPUCpP7mouQRqg4yXNdhfMog50zuKrdniRmwoDTXjKCjk4CSbFCyrZeS?=
 =?us-ascii?Q?C+tc0xAtyY0Cq65VFViZatg/dUy4z5W/HzqZNYII1eItI0CIF5Bosv7bOgEK?=
 =?us-ascii?Q?+xB/gNmeeiN9XAbDtY9WH21U4dnt+cxEwSm2x1q7lbF/PzfKBmW7oh50t6J3?=
 =?us-ascii?Q?C7hgEjCsWk6DHbWW+kjMUUUpqngWwhV2lyBj+G3Q6vSmCBE+YyJKBRRK3reE?=
 =?us-ascii?Q?mUMaHnKaSm4oVQnCMeokCiq/fe+Eqcs0mBwC3bmSOJ40wRwUdaUKmw/8/MI/?=
 =?us-ascii?Q?8NjNkYEBUXpHNQ9JyU14/DBo1cdhjBU3X3EJ09TEySUSFLrEMk6N/XoFid8Y?=
 =?us-ascii?Q?leO7KYgj6NqPhco8225F3SF58ZOPoADpr6Gw5XbhuBvG+lzwlIl+ks/4Q3xX?=
 =?us-ascii?Q?nayT2lc5Ac3/5IkuF1Z1+Iw3aKLOxffgOmWulJ1i?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596f3c56-7719-4779-c55c-08dac8894555
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:48:32.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxqVoDO5inYDuJ2sc8qPlNzDGMhchKzsiDKZGOoginDpyxI5B4x9U+sgU8w418wRWU2fI35WV7WgDUijIxIBag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668682116; x=1700218116;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8dakwXtIHnjr4LT4IF21k6kigaqjeQqx8jH0S8GkZPw=;
 b=ACQ7dvyByoXCGV+ty2OLRJ5Zn1SPNsdDujrpS/MjU5JNstgnfUlugNei
 52Jez52Y4Zucx+ntsFnGSacr13TcftbOWztYbwSmaB+RjDjHKL7Xmx6v4
 p2b9IWOcJXGfRLrFZmk58jY2nSuL9wyPSu+YnXYXhY45g1dnQBLvamzsD
 q9zYC1fHPMeGwipx3OwWBJzSq+PyXE6I1tIrwDlHv+Ma0Ah58O6vG4oV0
 LUKW+xR0th0U4sSG7UHpOVwngm39UWA171HzHxt7rUZ7ShzPVtY9qQcMH
 3JbqfafJ8GKYmIzXlGE5OCDFbtUzZvO79y5ogS6fvPDCcz1OSkzIAVcJE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ACQ7dvyB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 13/15] ice: only check set
 bits in ice_ptp_flush_tx_tracker
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
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 13/15] ice: only check set bits
> in ice_ptp_flush_tx_tracker
> 
> The ice_ptp_flush_tx_tracker function is called to clear all outstanding Tx
> timestamp requests when the port is being brought down. This function
> iterates over the entire list, but this is unnecessary. We only need to check
> the bits which are actually set in the ready bitmap.
> 
> Replace this logic with for_each_set_bit, and follow a similar flow as in
> ice_ptp_tx_tstamp_cleanup. Note that it is safe to call dev_kfree_skb_any
> on a NULL pointer as it will perform a no-op so we do not need to verify that
> the skb is actually NULL.
> 
> The new implementation also avoids clearing (and thus reading!) the PHY
> timestamp unless the index is marked as having a valid timestamp in the
> timestamp status bitmap. This ensures that we properly clear the status
> registers as appropriate.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 38 ++++++++++++++++++------
>  1 file changed, 29 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
