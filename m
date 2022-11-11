Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DEB6252B4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Nov 2022 05:38:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C97580B9E;
	Fri, 11 Nov 2022 04:38:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C97580B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668141515;
	bh=RUuGHQM3S26auludCcU0tCmOCvF/C8/lCo8j7G43lbo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Atx3eBfLIqTxjT8Eayahvau5xRmFX2d9CwG5x9hcjS4X/6Abb9a+yaWYO/hwJp5fm
	 I3ztRM4wcVlLHZqsTHoRLKIY2OpkAK+RCfEJ9XBlSiHkdK9CCaY0NkPEeUtr9TRGL9
	 OHqflbvpbIocxCzV0ofpSBKwbU7btQF8S8s3ScbS2wKs/y7jhA+kh0wFB9s4wyILUj
	 WEZ4YDxD6C6EO6FCvbgypqaYvN+bVsDqk+4xgoSWrYuTVayOoYPUCjX6RqAecZq8HF
	 1YIB6P/e6l0h9XgS/pA2EuJqPgh28QstQGSrdwIlQI0PPAzuj8wvPdTnPUfOnlYrXn
	 t8SHWd4OCnU7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EqpkJGPiu108; Fri, 11 Nov 2022 04:38:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18AE480BA4;
	Fri, 11 Nov 2022 04:38:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18AE480BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF0181BF867
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6D894021E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:38:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6D894021E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwGj2HstWYgd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Nov 2022 04:38:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF0AA4021D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF0AA4021D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Nov 2022 04:38:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="311526434"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="311526434"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 20:38:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="726660586"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="726660586"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Nov 2022 20:38:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 20:38:27 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 20:38:26 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 20:38:26 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 20:38:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pl37CKbtRoOYrscRD5CY9xFZrAqJ4s3iTloZ2BIVu5SUaI6lunwoLeuS0D3V9DTpThUv+TZ7fVpqeCWJCiLe0EMnMCoETt6E8HnvLnOCD9XlrhLtKNUStXS0HDHzpvzMYuHkGr/dylVBKu4qTFvK6gNUQqsV+/ABHBRUpwpwgAYBKVWo6BBsh5gOE7/VlRoDaVxYky0G/jdMdYIyY0k6FrtpESq1PMdgxoXmByzBEda+jJGCQgveaEimg54BI68jUu0kSrZJlVqMp3Osek2LWLqMsoJblDrmUGKX856asAJfuOm71pMr2kOXGnTA2p/7TCWjne+RYzAm7j+iWAVU3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vhyQoFeYpb/8U1ixsFnkD84pSQ5c30OK4dohIj+mKwY=;
 b=T6iQrtwX3/M5RfC9OT4kRa8Hxa3VaKHXTI531WLZwgjBeWQw+xQ9FwOLPJNd/8tEqH7wyrse6wtMH3drrC3OL1hSEL9HDuQt0Q5SsrYGL0K3NeiQeIXw5b2vNw3JBQuwmdDmveNADt2J+X3cxbhVgiRWdu9KMcs16r9lkZyszH9aRZI46jY6McQesXRpCOkeedo2TlK+3F5kkptq2HhKJOQsEbzREn3T8uh4Ev+DrfG5u5wWf570IZt59+NkO4E1eaf8po0sgV5gCr9rl/juPaYBr7vV4wrPKtxMeP+YVxDWCIFh1GwjKbDA4Jn3OF7LDoAao66ecoMH7Zn5NfvkpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3363.namprd11.prod.outlook.com (2603:10b6:208:6f::20)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Fri, 11 Nov
 2022 04:38:25 +0000
Received: from BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f]) by BL0PR11MB3363.namprd11.prod.outlook.com
 ([fe80::a53e:8e76:af42:1b8f%6]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 04:38:24 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
Thread-Index: AQHY1w5Ue6mHPi1nB027ns8m97K3Sq45YJTg
Date: Fri, 11 Nov 2022 04:38:24 +0000
Message-ID: <BL0PR11MB33638C2C62CBCD3AE0781233FC009@BL0PR11MB3363.namprd11.prod.outlook.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
 <20221003095519.539390-2-karol.kolacinski@intel.com>
In-Reply-To: <20221003095519.539390-2-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3363:EE_|SA2PR11MB4986:EE_
x-ms-office365-filtering-correlation-id: a0e01ab7-bfd4-44f2-ab5b-08dac39e920e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hVTPD/Ksi9K4pcw4RGV2KIdzdYaBg3E0cWRkA1tWv/Q4C+O61x4zZaRSf/7JqubvHCcvnk2OxKO5C/c65eU1V2RitRRX2N05szTPU9kOROdQS6u6l2yYqX+huze510hx7c0v84OLnVVLAAWlZRg4U/haZISB1jZDtSoCUSJoP2rttXj+UqSfLko3X4VjxkhoH3O5thM2W/XWGjO7VK+dQXrAPUZ9WO9Z36854Zz4B1UXprBySax4qvmRtr81MBna5gcx5eSGRqIoLYHsbp5YIeke5QBQvU+m9WSVUC7S3b67NzsjqDXKF11BIU5TOLgYZhMJZtuJ1sOIK6RY9ePE7m/mzYFC4biIIBNsNvCT8DcyqUPAFvoH6BdHK9dFv/XfG52r/oDBI81mgU0pO9h8sv+lB+6YpT1r8HHtrMWJ/mGOk2o4u/hGpx2aCX9U1Z40fji4cvJHOxD14fk9NDedi2bmcY7Xw7PqfHRdHvk2I+gA1V267XzRy3mmOCbIaHoRjF4PQfUtN5GCIDAmuM6MXXffQRJpUX7ugjLrT+HLps9C1TSTa6lGKG5bIR5lLlZH2aapPjtpghiZi8XdFW5PvHu31x5+pJ0fw1NcbGxu7sIJPCE6dWwVUY05A+b/RTXAmVEtoylIBfTG3l64yJQmtatxv7Fu7AfTfkeB8Z5EIp7kBV9PpTktnF0tCQNBqxS4uhsD+tm201uGaxfLfDhUxy7Y/AmMc83ZejQ8mITpyPEFpaUDFYnTWuqNZHzs5loSCMfq84wBDOLjy2iL+5apfg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3363.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(366004)(396003)(136003)(451199015)(83380400001)(82960400001)(2906002)(186003)(38070700005)(26005)(122000001)(38100700002)(8936002)(4744005)(5660300002)(110136005)(4326008)(9686003)(7696005)(76116006)(53546011)(478600001)(107886003)(71200400001)(55016003)(8676002)(6506007)(66476007)(66446008)(66556008)(316002)(52536014)(41300700001)(64756008)(86362001)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cICsHcIDKfP5PV67gUEoVkKa29HCcErwSEt8C+xHKCH2RBjPNGDOALJtpQDr?=
 =?us-ascii?Q?KxaToHb7d7X315nKgo6dubLrVvP9GMGqpDRAvZQwRI8X9zZskj28skRCtTu3?=
 =?us-ascii?Q?UVLKxTk2nxREop4h3RNIZKmSK/WmK3wjhwDUAbEvGQ9lan7FKTICEEA7CVSw?=
 =?us-ascii?Q?oxXEvEqA8gdFirpv2jUiBZ/63YnzCl6cadpPbQsCFcqguo2o3iWyy6cy4uQm?=
 =?us-ascii?Q?HOSYfWW0vT5ZmxMSsEwq2xMSno+yWoEEbA+D/Dt/hdALuau5Ht8iVe2jMwEx?=
 =?us-ascii?Q?M/xsniHpmtydk8yZsC8bHN6rkIrRBpRxPoZNeyOuIZMF0JT/5nS5lX3gNRWs?=
 =?us-ascii?Q?AIWZx45+m0wgHjgyGHaIxoFfndGAP1o/sT285ahX7rClqzi1n1xTr721SVk+?=
 =?us-ascii?Q?lwrZery/W4KddKQttc4GfLmuB6a4w9DDcwKJrmSX1OBnAzyX8EPJY0+h03gp?=
 =?us-ascii?Q?tWJcotNRVcmA1Pgo/tSO5aiDzhgj9pTfMnaDgICt9AJLpuDA0eNEnJo5NvIL?=
 =?us-ascii?Q?M6JLfO+3Kqj7gc/7N0tygFKw8zIaEeqI3gify0GmVHaNCRDL1VP4X24MjRC8?=
 =?us-ascii?Q?csXrr1QxDpBXdb8nj3RDgYBLKneZ/4QgSWZt04mjDJ8czALlvFFm5FZjWeXa?=
 =?us-ascii?Q?hZhzHpZ7Mlg0SbEtrZ65DVNRFAxhSCZTKGq/p+CJov763pckTTCze7z7JXHN?=
 =?us-ascii?Q?F+qTGRYK6BjMOafETdIQ/ryYpAmMH4xTPYvQJW8TwRvE5Twr1zIN+dqbrT4B?=
 =?us-ascii?Q?ebOGIsUtGAeUJ1qFfhIBrQqrUN4w2LvqkwR/KiC6ge8ZTquXuLrblETHwwGF?=
 =?us-ascii?Q?sdBOCNhXUEog+peXGwx170PfAyMroU2i4OcH6T//BxFBa2rl9b3E5c6POADM?=
 =?us-ascii?Q?whPN4W7O0iux1apM+bc090OXSd8lWcYmAhoWT80wFOJvlsoBI41eKZ+Huwr6?=
 =?us-ascii?Q?nUEX9iwCvoAsJvA9WLOc5jBPdBhwuTGml4RXGoku8O38n1RMIRNRn8VsY4k3?=
 =?us-ascii?Q?57mH+kyUhgaMDWrXtJZSYwpc6L+2z6Fiq+UQPVOO3AFEh1JurLnlwwXSPG4R?=
 =?us-ascii?Q?yvebcftyv3iASAcmNEx7OxuOPc63h61tsK+B47MSxxIXkrCOLH2QoDzzDSdw?=
 =?us-ascii?Q?vjmgCwHd2snj+SCBwGPZjsThZLMduo3SkmrnGrMMtrPhXmK3w/c1FZ4af6Kl?=
 =?us-ascii?Q?bvcFeW6lTe5MxTQQmVNjZkefifU1ouOuDnFA1/cuQ1/4S3A3Lg7x4LHtKzwm?=
 =?us-ascii?Q?1KVl970ZrqYWdSov6Zy1YVs6+zCqPIqS0YuCn0HqkZQI6qvJxrJJw264FoqE?=
 =?us-ascii?Q?4vnFIITYOx8ppqRn1RcF9w6aNZpsE2wyedr0CrT83dJtSoD2MjUK9h42aygJ?=
 =?us-ascii?Q?i+ReoX0BNRl0vacooZ6RVLDhg9Akez3V+/GKRtCe5k/DIrd0o5Vg8zNTvz75?=
 =?us-ascii?Q?p3q80PMT6JGngg0PrHYWz4KCfM6xBP1iSZu1GqWEFZAHEw6OsjVjiuoIZQhT?=
 =?us-ascii?Q?n2ercr/E0ORQZUA8Pmvzh+wqDF7YP6pQDVjj/SwHsO660HKWgPRiy1wGPizu?=
 =?us-ascii?Q?LqBoKe6ukLB5ifK8uRczJthzvaFo5H+sPhDSjYiU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3363.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0e01ab7-bfd4-44f2-ab5b-08dac39e920e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2022 04:38:24.8405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WIWwRkAI9A1a6X4D1m5zZzZuNI08R7/hR8ewD81pi0Uq6j1SH1t6nV9ovUw+5JZSyfx7FdGOsgt8qWc163JmUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668141507; x=1699677507;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hH0ECQRWC8GrmEpB2AHglXetid07EbapQDc2D4o2VSg=;
 b=Y8xcIdyt2YRErouTmu6p+QUq7iXUKYcP+DAd8Zf1wpEhuJsqhYPnyvNu
 aBGQU9HqjceWsuPHD27F1uuZlEeCeW+Vmm5SDhPA8yRF9LSPBMdnsg0HI
 A4j+9YGX9YdSGOAsYF7r789RM3irFtbRVGCVIbbtwbxYgzkzsBcwFHELM
 HE9/ghBa9yNficMhofiTx4rgUKa4KpKKGxDb0/aT+t/DuRUhRQ8IDZENg
 m3ks/JRpTAZQx9g5oh121nrv0TdUmQn5l3MZSnK254i/XAOjWDrXa4/t/
 xSEsIB5hURNCFrhY13tgOaHnAbucxHll6dkZDvNBBlQpabbqQwrUDlxlQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y8xcIdyt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Monday, October 3, 2022 3:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
> semaphore
> 
> Reading the time should not block other accesses to the PTP hardware.
> There isn't a significant risk of reading bad values while another thread is
> modifying the clock. Removing the hardware lock around the gettime allows
> multiple application threads to read the clock time with less contention.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 31 +++---------------------
>  1 file changed, 3 insertions(+), 28 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
