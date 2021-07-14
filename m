Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C873C9297
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 22:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB82682A26;
	Wed, 14 Jul 2021 20:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqTUjfJ9mCFt; Wed, 14 Jul 2021 20:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0177982813;
	Wed, 14 Jul 2021 20:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6B801BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 20:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C407660717
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 20:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5vEd_Xm2TZi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 20:52:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C34D76069B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 20:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="190802046"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="190802046"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 13:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="505461088"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2021 13:52:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 14 Jul 2021 13:52:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 14 Jul 2021 13:52:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 14 Jul 2021 13:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjdk14Lqma72GqU7hY5ajUM9CaOeRrPOsZKZ/RAB80syvqu1M3rsS378cJ+8/snr9quDyuBo/WGpB0jn+IATyLh74FGQpJREZogLZa4vn6CuZUug0uPz6KECtMF2Z7t9riig+pNfgJhktS1D/+gopcxgV2c5wcZl4xMSoY9BHYMFhS57QUwCMSysnJiDfiESyiYIDV1rb5HqYK5Q2nkDC/zJXZJ8BJWiFtUAdDW2R+dS0DWkZr+eTaOcWVRzvtlFsD3jXpsxtVr1D0bqEWSv+5UAPZSklUW0mYqwlS6vPdIAXjYYYJHqF3fuIbk9RDDHECyKJmWe6A8YSdk/dM1vUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEslGUVSA6XiCgR8bTI+eaeSQvcQoEp8RGWKXCpSyGU=;
 b=gv/CrpvT5pcGgJQe6OZhKUxFgAmG/CdJOXcUMgj2yHW9NWJdekn3BDZSTrWX33p7lhsssT4/iNEzTOTFCVHVLYYEYqXsdZ/VZb7KkHZs5g3vNJHGkBoTs8tOxZ1vJbdyl6DKWr7Cxy4OQNfHPZcLNeBAHXCTqsasdZ0D2p99hdUO3HcmpqvFhoOs68ZcsnfbJydYB8W7hcxXztWZ4ZMiI1+Pk9hyy0qaEDQ+YZd/BRetluJyS2DZhIaYIuVDwezUKbV/5K+/9alot21aHbDxXWN8G8FGE/Co7pMf0YFGGc+kqVjr7vSulF8wdlCPAs41r7ZVzGVvyxjEfxdr7hpxAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEslGUVSA6XiCgR8bTI+eaeSQvcQoEp8RGWKXCpSyGU=;
 b=WasckFjukdwtHlwbR4hsc1J930SPfM7nM5GPPhbtkYGKynWFcz04NBgCgipS2zoONGvVCOPk1kmg3DSAO0vvtgmNQjddkqN5aVZKVMjq9/rHx82KvwUBDC6Dr112WWEJYjevhc5xgKb+BE1VN/tLozX0LcAtGlYFLGDbrjL2udo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.24; Wed, 14 Jul
 2021 20:52:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4331.021; Wed, 14 Jul 2021
 20:52:32 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kerneljasonxing@gmail.com" <kerneljasonxing@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "andrii@kernel.org"
 <andrii@kernel.org>, "john.fastabend@gmail.com" <john.fastabend@gmail.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>, "kafai@fb.com" <kafai@fb.com>, 
 "hawk@kernel.org" <hawk@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "yhs@fb.com" <yhs@fb.com>,
 "songliubraving@fb.com" <songliubraving@fb.com>, "kpsingh@kernel.org"
 <kpsingh@kernel.org>
Thread-Topic: [PATCH net] i40e: introduce pseudo number of cpus for
 compatibility
Thread-Index: AQHXcxRXDa+iEt2Iok+2H8F0lm/YOKs6PZsAgAjBcQA=
Date: Wed, 14 Jul 2021 20:52:32 +0000
Message-ID: <03b846e9906d27ef7a6e84196a0840fdd54ca13d.camel@intel.com>
References: <20210707094133.24597-1-kerneljasonxing@gmail.com>
 <CAL+tcoCc+r96Bv8aDXTwY5h_OYTz8sHxdpPW7OuNfdDz+ssYYg@mail.gmail.com>
In-Reply-To: <CAL+tcoCc+r96Bv8aDXTwY5h_OYTz8sHxdpPW7OuNfdDz+ssYYg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04217212-02eb-4795-cd2b-08d947094d07
x-ms-traffictypediagnostic: SN6PR11MB3518:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB351888ED04CF63C80A59564DC6139@SN6PR11MB3518.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ETh2ZtBTIVszVZRSTx5xezjfaPYtkUErb6Xe7lPM+6zDDSL8ta1dqX1ggmDD0+Ik3/N29bHZYZ10JDkgclohcuy3YHwteq+DJxkcO84xtJOZXLjZyIaw+2S7RiBIN1A7Ln43CygyI4h7xo5P9IgIfd9gpIrt9DNeHPHpO/SenxZqR/5LkxWaJtI6jtk94O0QL7Hr5QTPD5+TkYX2fngdz/m/PARqQYOis12PRSrmFHcaggY3Rrhv+QE+0dVi5iYhvc/gY0h4M9260R1mflUlwlVKcNm1rjNHpQCAojiIyDmA/+0Xb+XUbROzEXBfXAq4oX9RyWVqOLmtCRzqtTzAbLfDZ/Z0VtD6vi7uFh45SAQ7auLyhr7nSemQVBcYMyjcXCpHJkv1nC5VgNDGjXl/tFlDuPvhp90zwvf/JVhxBK8i7m71zWCaCWP9SkUeQKDsZZ0Zgwv7P/m9FXQGEnMy5leeWK14tOCIYAIYwNCRok6lQQhhUcxvlNLwIBmCVz+9Wnl77qT1FFs5iai2QIWhY8NLu7DWQgPH2zDWUmg5TeQz4XbyL5lK3icgrno/F2ef4eZRuVsxELUGX47sfDF56QJEYK95rrKw9VELFfyPcO42ddixSdd4hREk1Iddd3CgJAUyKWDN7WPjdIQm1RFyWp+Ixpm44ASLMUf0b7WPTt0aDbKgAmhd0FD0lpgQu0MQki4TtyS3orhmUU2M9N8ou2PvlG6/jexniqq74zPETA0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(6506007)(4326008)(5660300002)(71200400001)(2616005)(8676002)(86362001)(83380400001)(122000001)(6512007)(66946007)(66556008)(2906002)(921005)(7416002)(478600001)(26005)(76116006)(91956017)(66476007)(36756003)(186003)(66446008)(6486002)(54906003)(64756008)(110136005)(316002)(38100700002)(8936002)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q095amxBREl2SWJiVTR2b1psQkRKQWtxRjhrNmlqempYUVNvSlAzQjBlSDh2?=
 =?utf-8?B?UUEwMmwxZFlIQ0pLVEs4aEswUmNKWXlYMSt0eFNxd2xPZXpVN3dyK2JwMDJC?=
 =?utf-8?B?ODN5NXcyR2VCaElieEV2RFc5YWJTc3pwTXFNK05ZNVlsZ0Y4a2UzMHJCODlC?=
 =?utf-8?B?b0pIODRZUkRzcTVRbWNlTGdjRHRoc1kxcFY2SDZ5R3NObUNHS0t3OFpHSHdu?=
 =?utf-8?B?SmJ6T042c1lxVHJOU0VLMHlQK3NVbHNTRTQwWnBFeDJZU3J0L290TWVZbW01?=
 =?utf-8?B?d0NwbjVZdGVIU2JwSCtNQUdMMXVNVXhiNFpCZFVLSFNGWlVPOENPdWJ6WVpm?=
 =?utf-8?B?ZTFSZlBQVzF5Qzc1RzZ3VzlXMlhITXJjNzVuR25RMTA1dFRTNTllcWFpZ2Jz?=
 =?utf-8?B?K20xM21mTFVuQWlhcTM2YzZWQ1BzUUNwSWZLYk1nTEdFYnllNWk4eUhyRytD?=
 =?utf-8?B?TlpkTHIrR0xHZmpxL2IzdlUxNWtoM3BtQjRvVmRMNXFPeUdrcTFPN3RrdWRP?=
 =?utf-8?B?K2loQ3g5eHNvZnlab2tiRXZ6WmtSYUU3Tmo3NURhTEUyNlBxWHYrTFZYV3ZS?=
 =?utf-8?B?UXFGZkZKSFNLL3ZjRVI3MTNaUEo3eVVIZndmUHp2SnZTNU1CRHVNcFBobm9m?=
 =?utf-8?B?ajJxdEgvd0xlWGdvSWNDaklhQjAyWFdFUGNCZXlKckNEaW1LQ1loQ0taYkx1?=
 =?utf-8?B?eGRUS0srMzYwNWdQU0tKRG5CbUlkdHFIU0habGladkVpMmRaRTVuaHlzcHoy?=
 =?utf-8?B?TXZSYWtiS0E5VE5UVFJydDlKTkM1dWRkL2Exai84VkRzYjY5U2NyYW1oa3p2?=
 =?utf-8?B?REJydVZraDA3NkNCU1pVRytsbm9lc3VyOVlvWlgzZDdFd3NLb2VZSkJTSmRm?=
 =?utf-8?B?UzljU0M5T1EybmJ5Si9NU1RJaGhNTUlOUHVoc3hLV29ERVk5N2l5MDF5R3Jz?=
 =?utf-8?B?VU9FT1A2aVRHanlzUzJOQXQxTEllY1dFdHBVYjArcnY3eE1NNnozUlZBVDUv?=
 =?utf-8?B?a2w3dWtzYVZrOStpeTFERzZ2a2t3Vm1UVUF5a2U0NVdzNjd6Q2lqRnA5OVVY?=
 =?utf-8?B?S0pYM1lxUExkVUdtZlRXbGcrWG12Q2JxdnB6WmNjS0orSmtvS0NVb25tTjBL?=
 =?utf-8?B?VCtHVTBEZ0EvbXhjU0lVRnFVYi96Zzd2RWJzanpGRmVYTVQwQUg5T2R3bkNp?=
 =?utf-8?B?SGI4TlJxUTAxZXZxYzkxRVI3VDNmNUhSRStERjc4aGtkRW9YN2R3ZXZCSnQz?=
 =?utf-8?B?YmtHaUhkeUhWNzFRWVQ3NTU2VzFCM3MyT1dWQlRNTFBsTmZpSGJoZHpiMHBi?=
 =?utf-8?B?cWNSYWtObk5oQ0pyeVUvVUt3K2R5QkhoSVhrcUZUVkk5ZmFFRGhJOVVCUXVo?=
 =?utf-8?B?elh3R0NnNlZQeDV6d2M1Z3dVSEhoeFJRMjBjSTdORXJDU2N1MmhjeklXajMw?=
 =?utf-8?B?b0E0Q2swMlNiaHRDSHVWWkxNcXFYWE53SCt0eWNNOVhJRHBvcjVQNmtYZUoy?=
 =?utf-8?B?VDJkbjVPaVQ2dWR4a1VPcm5CQ25KZFhtdHdQN3ZIMVhhVmxxd3JwYU1Xb3NO?=
 =?utf-8?B?TWRJYmYwdDhUM2k2NHJWTE1tbzFwQm41d2xjbXA0c2ZwSDRrVmJtL2RBOFZ3?=
 =?utf-8?B?VVpraU1ycXExZyswcnRxNnNRSnlmQUtFUXVHMWljNzlNZVZCVE02RGpBS1BJ?=
 =?utf-8?B?bHVwRndtMHgzUXQ2alVhUW1GQjJEY3J2MFE2bkREZHpsVFpPUWhUNkRNNjhC?=
 =?utf-8?Q?IVqp7OKaU1F3Y+jyblK9hgGRPfOMPncdqAbx3Qs?=
Content-ID: <A915B6BE7717A146BBD06846EC504E8E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04217212-02eb-4795-cd2b-08d947094d07
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2021 20:52:32.0611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o+p9QRQo9Ydp1MeVtnDg2sVPzRLfmccgxzd9YSl/S9IS+HEmh7YRw7ex3ds5H2mPl/8aZ2mHZXQnjHMQHHqZOTCKkgYsQTE9eCNdmj+/fww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: introduce pseudo number of
 cpus for compatibility
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
Cc: "lishujin@kuaishou.com" <lishujin@kuaishou.com>,
 "xingwanli@kuaishou.com" <xingwanli@kuaishou.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-07-09 at 15:13 +0800, Jason Xing wrote:
> Oh, one more thing I missed in the last email is that all the
> failures
> are happening on the combination of X722 10GbE and 1GbE. So the value
> of @num_tx_qp  the driver fetches is 384 while the value is 768
> without x722 1GbE.
> 
> I get that information back here:
> $ lspci | grep -i ether
> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Connection
> X722 for 10GbE SFP+ (rev 09)
> 5a:00.1 Ethernet controller: Intel Corporation Ethernet Connection
> X722 for 10GbE SFP+ (rev 09)
> 5a:00.2 Ethernet controller: Intel Corporation Ethernet Connection
> X722 for 1GbE (rev 09)
> 5a:00.3 Ethernet controller: Intel Corporation Ethernet Connection
> X722 for 1GbE (rev 09)
> 
> I know it's really stupid to control the number of online cpus, but
> finding a good way only to limit the @alloc_queue_pairs is not easy
> to
> go. So could someone point out a better way to fix this issue and
> take
> care of some relatively old nics with the number of cpus increasing?

Hi Jason,

Sorry for the slow response; I was trying to talk to the i40e team
about this.

I agree, the limiting of number of online CPUs doesn't seem like a
solution we want to pursue. The team is working on a patch that deals
with the same, or similiar, issue; it is reworking the allocations of
the queue pile. I'll make sure that they add you on the patch when it
is sent so that you can try this and see if it resolves your issue.

Thanks,
Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
