Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF44940BC46
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Sep 2021 01:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E5AD81B48;
	Tue, 14 Sep 2021 23:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3EpVreTvNrfR; Tue, 14 Sep 2021 23:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E77081B3E;
	Tue, 14 Sep 2021 23:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B536C1BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 991CD404DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2fVS1Wgg2XBS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Sep 2021 23:37:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13EB6400B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Sep 2021 23:37:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="202330551"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="202330551"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:37:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="650966146"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 14 Sep 2021 16:37:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:37 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 16:37:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 16:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHwRTAt09XE44D5Vj1H3cWKRidmQtHdw5UTRZmYuvph7y+mg4Ceb01LmaSjFE6d7avT0NYrMzK1cWhV01nXfpjDAM3PCqZnO3w5cVa7qAkLKRaPhMPoEbJDUUcwFKx7b9EjzDnhe5AUp/uoC6PWdg3bFhLjHQbXodfaps/V7//7CBbC4JMF0ezXFkQeDvrtxHg8FBwOycKziw66G7BXb6S+FEg40WL6jEEJuJf2lzs98Yn5gfmzFBM5vOlt7eL5AUjVzGbxIRDv4ex9Aldco7v5SnxVpoW2hfMti1t1I8TEBj+16stetuMiSsRZG/VoybWc7M8Kr3ROZoBlQM549aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=UcNko14GT+UM4rD+U1vsS9G4HbWrH9g5fChKHSVeJPM=;
 b=hmlCSu/xsMj1Uvh/yznOaN5xcZmyPHZtOXeZwALC/bUPaVIhVn42Fy0WNvvrFZXzTpT/8E/7Pg0Msehic5QPl9AEbr1ziM7TN3iLMEevweSII4swhB001nafwirtb+oWBWveRFRtNWMIKiASNgcGz7zRu/qWM1PlqhbWirsuN6KE/uI4CXeD4TR3HATZdd1jyS/JhjTiGEm6wgskKs8aiTQjrMAli7G/cfwHFsVtJZysqdPv115khknbI318q6ufLVF2Te6R2ER8fchxh740RRb3iPNKixCzphDEDoZusk4f1PzyxRsAgygQeKhjH/VrlG7/WpKwpSvLEPjfb3kD2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UcNko14GT+UM4rD+U1vsS9G4HbWrH9g5fChKHSVeJPM=;
 b=YPaEUOeFIf9eYidtaOvClxoDIdqzRpQmQ/GHP9nIoRmix6OUYD/44jETJPkX1pJZlRY1JXTjZJ+xph8Eb/0eKOVIOilPcqvIvHZAVWPNwE2B9iXmxWF5NhZUz2S7dfv9xSV6cyBnhgq+amZcNDv6oKEOzJL+9XPVnSeYffJZReo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2542.namprd11.prod.outlook.com (2603:10b6:805:60::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15; Tue, 14 Sep
 2021 23:37:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 23:37:34 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 1/2] ice: add i2c read/write
 read commands
Thread-Index: AQHXqKbKqSMiu6eI7kegLSJdH16wKaukMswA
Date: Tue, 14 Sep 2021 23:37:34 +0000
Message-ID: <41417ec2e162d70d207d4a5539fb53e4c48a9e43.camel@intel.com>
References: <20210913101108.17927-1-karol.kolacinski@intel.com>
In-Reply-To: <20210913101108.17927-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0a6f3a2-ee1e-48f7-fb8e-08d977d8a0d5
x-ms-traffictypediagnostic: SN6PR11MB2542:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2542AE4CCB02AE63C6C4183AC6DA9@SN6PR11MB2542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4OXVKaqgLL3h8rRWsj9ROawmjz1SOYzIpu2KwpUrje1aQEeuhQUL+jWzzEpDgeAG/nqDhK+vmjm71Cem+8cvFswjCKD2k9IF2yQ9L3c4Tggb/28yZip1BRq284zUl6z0nA5FDWDgHqi4ndm1O8A0ZJ91+5nDYfXmHm74hSA6izbciuBasx6Pad+jrlBEOrOE9y9lkLLUc8c5GAt+jIwkSN1XUkkNQ3PygEcn+4fDvZi1SUpY5yz2vy45ppm4G16MRJvDX5yQasrwVF+n8t3CFxW0FRY56lRx4DsfTqNdYx8kNa410upDudsQA/x7iQzU4l5ccj3hgW7yfFuUR6ntMtfNYtUgIrBbykwEJGSoScgH2oWp7X3Un++514JeRhN5WATPo09rxjZ/W99Y7ggoVKBxOeG9GOkkoj2f9bMY9pxV+O5pB32rg0BFN9Ts7PNvKIrx9apER2GpojVl3RHDlbEQf6WLQZTsyWvDVVqu2ghfn10CuF1cfF0EWReydaU3/7y+e1ZucX93vI6RIrdA88+1WuqPTtwo4VrBR3RnkJdxJ4fUPNVRstNc2gjkCP7SshGX0NZeMLcTnzrnsI/pX1f5/bk0uUfbtgMe+UdX33xihjlYZY7KL+OWcrV3QtKNvpCEltmP6eq51mo5oWUsWqkZhQkwcNBud9LWri2esdroPLJOjPVXrS0PY5TTkAweY0u8DmZ/fMQ3PIRhUPvCAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(110136005)(5660300002)(6512007)(4326008)(2906002)(316002)(2616005)(186003)(66476007)(478600001)(107886003)(36756003)(38070700005)(122000001)(8676002)(76116006)(8936002)(66556008)(83380400001)(71200400001)(66446008)(64756008)(6486002)(66946007)(86362001)(26005)(91956017)(38100700002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDNFa1J1NmJDYlZYTDRMc2JRSTVBeUhaOTZxUmVJQSs3K0h6d3k0Y2tXYUpC?=
 =?utf-8?B?QWVEWVNYQjJVendVOW5vWkZBTlkvbjF4MlJqYy94TjRDME92NEpTZmxRa2Fw?=
 =?utf-8?B?alAxTW5nOFhDSHl0dXZlbmZJcmZBMElGZm5GRjV6QmtCZ0pJL3ZCdWdRNTFF?=
 =?utf-8?B?RGgyRHdLUFA2Z3lOS3ZVNEVTbHdDUmxjU3V1bHBFNWxHbUVpbCszazlUaHJp?=
 =?utf-8?B?anJkNnc3TmZPZVJMeGxyTzlTb2J0WnRZenNJRndkeW9oaWZuM2ZiU0NDQ1BB?=
 =?utf-8?B?ZVJkV0s0c2I5UGtNQlA1UnkvaWNvajhWMDdYV2p5OUV5UDlrVlpZSE1HalVZ?=
 =?utf-8?B?UmhuTVpyNWhzU3pqZUk5SGwyT0FxL0ZjeHFXSG5JQnVsUSttazBXMll4WnJI?=
 =?utf-8?B?d1RLSVpmMWVhM3QyYkZhQnZRZXVUcGd2ZHVvMUppci8wWm0xT2VrTVY1Y01Q?=
 =?utf-8?B?RHdpSzdpd245cWNWaFRMdWpMTmhmdU1KNFhJU0VQNFgzL3dYdkZ2Z2JacUtR?=
 =?utf-8?B?UTZua0dHaElsNjdDeXlwK2JzVlg1Q2NpNzlTQnlrVFoxZlhYRm9IRTdPQUl6?=
 =?utf-8?B?cXBXRFEyNTVmVkF4VHV0dVN5Y1VHVDBYNEVqcktmZkg1K24wOG10WVByeGlX?=
 =?utf-8?B?Y2QxK3AwbzNBb3VWV1hkZ1Q5SWlPbkxKTFVZSWErem5PQSsrRURrRWFrWFBj?=
 =?utf-8?B?anpxekFCOHR5WkZqUkZiVVF2aDBsUnRoUW5TUXU5LzdlMFYxeDRXL0FGZkxU?=
 =?utf-8?B?MnF4bDJkRUowSzEvV1VsMnZUdDRqTUpoT2pXZDV6d1J5T2hFOEVaQ2NULzRp?=
 =?utf-8?B?NXhvTGxrYmkvMkJPV3VScjRSQVFsUnZEejRxMFVkRHF0c2U3V3pVQmY1UjJo?=
 =?utf-8?B?d3o1ZFFGKzJjVVU4WEZhOUQ4MjdGTmQ4cUcvRGdnUVo4KzE4SGRXZ2FrYmdo?=
 =?utf-8?B?ZGZOZERmRmdxWEU3MnRsS0NVR3czZmJEa1cySEZWQjZFWmVuM0JCcGxHWkZN?=
 =?utf-8?B?cnBtZFN1eEFhQnd5Yy9VNnJXZldlYzc3Wlg4YnZnV29sL0FNZXhQRmlDbG8y?=
 =?utf-8?B?SVBGKytYQk5PNXlhRTdWWWxNRkxmRGxLNkR4TXdSamVqdUZOQTNiOTM4KzZL?=
 =?utf-8?B?L0hrdkRuL3M4TG1ZZzQ0QkE3b3Z1S0tKV0xsQTBNOGdKKzBJU29tSndhR09x?=
 =?utf-8?B?YjBPZU1iRjZuL0ZFL2dkOUcxK1JGY0tYZS9leGViNU93V05Nb3VMajB5R3c1?=
 =?utf-8?B?dU9aVXZMdUY5eGxSRVd3dnZYdlNibjhZSmcvcnNZcVd1R1hwSndad1N1NSsw?=
 =?utf-8?B?bVhOZDNuMWJVL1RncGNwKzd1bG16VTUvVUFHNUtLZ2dOTjBFakNyWXRvcjFI?=
 =?utf-8?B?U01pVlAzaDJvWXEwK3kxNlpsLzMvdlMyQmZtbDV2Wmk5ZllMRnNDbFVhOXpV?=
 =?utf-8?B?THlaUVZCRUZvOWFoSXVSc0U1c0grQS9FYlVHZGExN0pYalhwb3lKRWsyOVlM?=
 =?utf-8?B?YVBkUjFpSnBJUEZKQWpXVGpMZ255ZE9VWUZKMnB5Z2RBaGFOd3FOVFJIeTlC?=
 =?utf-8?B?NkVJK1pCaWczdmxRd1Fzd0dPemRUNitMMkc4Mmh3ZlZxZm4zVlhDZkVPUncx?=
 =?utf-8?B?S0pneUI5dTZXZVFDanB6aGc1WEtXZ3Z2TXN4QWNvVTY1aVQ4WTVIcXNFdlk3?=
 =?utf-8?B?WFRPUit0dEpxeUdybHdVYWxqdzE5R2NoQ0hia2JWQUNoQWN3WEh6aEhaRFlh?=
 =?utf-8?B?SGtXNlFtTEFyOU5vYTBIOUxEYzlwQ003TzZpWnJlV0lEWXpHWXlTRnhhTFJz?=
 =?utf-8?B?cER1YXRDdll2UW1VWGZQUT09?=
Content-ID: <FAC73EFC61A2E748943AB04F2438CA6C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a6f3a2-ee1e-48f7-fb8e-08d977d8a0d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2021 23:37:34.3196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VmWduGAuk2Eq5l8IGZpRHwaSMklxxGyeDz2C4/r0ajgaktj0v9lke9LkA8h166haL0LzCT/qjrl1nD6/XBGbmFcZvT0PdPx1wfDLRQnD/dA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 1/2] ice: add i2c
 read/write read commands
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-09-13 at 12:11 +0200, Karol Kolacinski wrote:
> Add I2C read/write AQ commands. They are now required for controlling
> the external physical connectors via external I2C port expander on
> E810-T adapters.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 29 ++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 94
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  8 ++
>  3 files changed, 131 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 0f64fbc9d3e8..89448e61c3dd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1341,6 +1341,31 @@ struct ice_aqc_get_link_topo {
>  	u8 rsvd[9];
>  };
>  
> +/* Read/Write I2C (direct, 0x06E2/0x06E3) */
> +struct ice_aqc_i2c {
> +	struct ice_aqc_link_topo_addr topo_addr;
> +	__le16 i2c_addr;
> +	u8 i2c_params;
> +#define ICE_AQC_I2C_DATA_SIZE_S		0
> +#define ICE_AQC_I2C_DATA_SIZE_M		(0xF <<
> ICE_AQC_I2C_DATA_SIZE_S)
> +#define ICE_AQC_I2C_ADDR_TYPE_M		BIT(4)
> +#define ICE_AQC_I2C_ADDR_TYPE_7BIT	0
> +#define ICE_AQC_I2C_ADDR_TYPE_10BIT	ICE_AQC_I2C_ADDR_TYPE_M
> +#define ICE_AQC_I2C_DATA_OFFSET_S	5
> +#define ICE_AQC_I2C_DATA_OFFSET_M	(0x3 <<
> ICE_AQC_I2C_DATA_OFFSET_S)
> +#define ICE_AQC_I2C_USE_REPEATED_START	BIT(7)

Not all of these defines are being used.

> +	u8 rsvd;
> +	__le16 i2c_bus_addr;
> +#define ICE_AQC_I2C_ADDR_7BIT_MASK	0x7F
> +#define ICE_AQC_I2C_ADDR_10BIT_MASK	0x3FF

nor these.

> +	u8 i2c_data[4]; /* Used only by write command, reserved in
> read. */
> +};

<snip>

> +/**
> + * ice_aq_write_i2c
> + * @hw: pointer to the hw struct
> + * @topo_addr: topology address for a device to communicate with
> + * @bus_addr: 7-bit I2C bus address
> + * @addr: I2C memory address (I2C offset) with up to 16 bits
> + * @params: I2C parameters: bit [4] - I2C address type, bits [3:0] -
> data size to write (0-7 bytes)
> + * @data: pointer to data (0 to 4 bytes) to be written to the I2C
> device
> + * @cd: pointer to command details structure or NULL
> + *
> + * Write I2C (0x06E3)
> + */
> +enum ice_status
> +ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr
> topo_addr,
> +		 u16 bus_addr, __le16 addr, u8 params, u8 *data,
> +		 struct ice_sq_cd *cd)

If write functionality will be introduced in the future don't include
the write implementations until you use them.

It may make sense to squash this with patch 2 after this. Just a
suggestion though.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
