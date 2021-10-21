Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FF0436C85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 23:15:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4FC380B62;
	Thu, 21 Oct 2021 21:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UDbXDpcDlquV; Thu, 21 Oct 2021 21:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3D3680B4D;
	Thu, 21 Oct 2021 21:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09B361BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7EFB40389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aHiXsMFLcQc9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Oct 2021 21:15:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22FBF40332
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Oct 2021 21:15:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="292608377"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="292608377"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 14:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="534456626"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 21 Oct 2021 14:15:02 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 14:15:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 14:15:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 14:15:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 14:15:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbpzFsQKiWKM8ayo/wntEb+M3kVWP15G04Md8qzKjCOeiEn8XwNHu/7BWKi7fpaw/9EKJQn0KbiXjUu+8BHIZHLtWpofFPUsgkQEpm7MpPCw0Yex2siWEp1OUxTEYlf1jx5oTDReVv0NkxjDuyc25d3daE3KcoxBmYObS80a02pcSUY72STMFMUHgM+wBSGevfewzmIRg9WgxzKUC5pjz3DJ5SDp9RUTwVqccE1wJ1bv7s7W8yxNDMpAMP/WFt8KDaPRAJjTyOZ/pZFtsCi8N6gWyqUKz3LP3VPnQoHyVVj9ZjOA0Nc6EqwfrJsI/SY++fSz5wwERzH2aRk/BLYhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D86gEjcTk0cOrApFBjxl+3+0sQutQhsGS1LSEknHqgs=;
 b=JLa9/ezo6kZ2EWh9JLS60I4FD3zFcrAM02dQliw2weSobOkFw2gkLAUMc5aROObFdijPDP7MIpMbuzQGsJVj2FnL1v0w7zwH+8SvHwjWwsVfSKGEy/fG8rHusVd3H16sgW723XTinfb9bvRzbOot40ZOllR680PKSrL47nXWURh0YXu+r8f2QxY+o+MS4UBqF+SARtyG6AZzRKM1uOykxFy8SIJ1JPIqVeTuqkCh/EzXtb3bxigs2kBsexvArrIL8YPMhmCBVB9wCqcTuiO3JGaslLSdtfZmg3qki5zMq1QIDuF0kFJfit9oQHT3/JZ6YD/SMAqcbCUAgCf/mDtvuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D86gEjcTk0cOrApFBjxl+3+0sQutQhsGS1LSEknHqgs=;
 b=J0Q0gBMw0N/8gcMkHu4Obq7tebR1wraWMirqzwqkoQ9r1VN+tuEQYSpaFSNhQ745p+BHJE/0nHa8hlvU2ZMZac6U4+f34EUgSYeVdRYI/a/UhkWn7nZ0hemfatXvSb1PjM5XdjPW7bvWPZZ/+7ZdQ81IC8tn9hI6so6/5MXrtvQ=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL0PR11MB3427.namprd11.prod.outlook.com (2603:10b6:208:7b::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Thu, 21 Oct
 2021 21:15:00 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4608.018; Thu, 21 Oct 2021
 21:14:59 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global
 reset
Thread-Index: AQHXn+XhzYe0DL1TzUiPIDIOeHkJl6veQTsA
Date: Thu, 21 Oct 2021 21:14:59 +0000
Message-ID: <MN2PR11MB42241816B5D6AFF1B7E8D7FD82BF9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210902103106.51917-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1044dde2-4112-47e7-0ffd-08d994d7d72a
x-ms-traffictypediagnostic: BL0PR11MB3427:
x-microsoft-antispam-prvs: <BL0PR11MB342714B2E3014A6D639C598182BF9@BL0PR11MB3427.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TDsC9YVZYGtUinAdQ62yHf4tVWsDS6ZEKmisJBRdbYlRU7Hj9S3qEquTqYjkjq0WEZweWQGXYz8+zzBWrsEn2IpO+HMt2TDWkR67/8r8Edy+JXd+T5MnnuoE7FGkJUgqLgnvX+VycHOSTu8tj7u21s4gOba9cFsB5ciK88FDWLSqyOQUicxszunMirTDbGsBVe6v15shPtyL3WGbc/O+/9lmKgarTG4IpqT0Lw+yRMZjIYOCNfTsVx1EE9RYZVzO9/XRpfUNGqlqrofsdcKwSb9Hh1JX7F9m+bEUNRdh4jaYW5JhGG+lME/pCgzJcUCS0LU9scUQm9VtTJCzX9RYltmELRU1LGrDmvyncWmmzKrY4BjwGTx6Ja7kQde+JvuJz+Ub4bvQf0wAuldFRFyV6eyVHCR3qFjBVMnRwxaBY3iF40nGoqypdG2VkNhVwPsynaDYryF4Z6FOq7dDdlp0G1ExE5elM+VzWV2bNRSpDaoqrrzgOWWlJSdNwUhCb/QhCX469gg/FoT4qX+MTLC9ZAbqEcvLVKBWjsud5s1tSpx0jpZgd6Sp52+mitX329tymOYTl3fBS2IwgYEyFcYG64Wk6u2kooszY4iItLGmXI0bnMFaxL+fp2BFhVWA4ekAtnDw4KWPJtFpPTdeU7lOequWDPCAHr6PKEePCuKv0ei6rLdSSETkQa3tIoNBNOjqr/zg4Df8w814Wwfp9KVWww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(76116006)(9686003)(66946007)(122000001)(6506007)(38100700002)(55016002)(8936002)(7696005)(4744005)(110136005)(508600001)(2906002)(86362001)(316002)(33656002)(8676002)(71200400001)(83380400001)(52536014)(5660300002)(26005)(66446008)(186003)(66476007)(82960400001)(66556008)(64756008)(53546011)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8BBiz60/p2erhlOeT5P2YqLVkuUg/oEy5sjebFzyABO1xdpIRVKuBmScMGNo?=
 =?us-ascii?Q?IStxcEt8ZY4OoJoosQlvQ3sMeI311u7LzOm7+Nb0r9dpB9tDe544NC0bgL4n?=
 =?us-ascii?Q?rC8LjXOIAs6KY/f3PWBQYkigeiWJz+Fvg5inpqRgVapvifeuPBv3bSLodJnw?=
 =?us-ascii?Q?ipU37nrwZcHRUj5jQvaLLwbEKosokG57C6roHDNfM4tqUCjMAMIohmRVfI0Q?=
 =?us-ascii?Q?qUWjs/Gi0AIFNQ33NWJHPD4Iflx9Noxu3C4MRhe46mppTxQSbEcOoWtC9lKP?=
 =?us-ascii?Q?1oMIKSfBtctZSjQjlpxVPba45hfhtlSrAasVWCpZrVKUhXYDplaZq+44kNpK?=
 =?us-ascii?Q?8qHz5iiAt6Pu9dPXqzeopJa0KKW3fuqRue9VGq81pMVsPB2dt061m1vwQNww?=
 =?us-ascii?Q?8GCtdJom8H1wRXQIFWtWqf2zILGYqUVRq4eRnyElU7laPp5T9pe3ZjVjZlu/?=
 =?us-ascii?Q?AgaVH+AgLMzzhm+N7dcwPIsdo5PEs89HOJmOy2Ip7guXtOinVTfI6XQ3Ny3M?=
 =?us-ascii?Q?fNCnsJ0uXW+hw5G0L+wdZb2bVTodwHmyjHrXXN3/vCvesGs45g308UptSH+R?=
 =?us-ascii?Q?Q4ejwfhnBQTTzeTyhIG0TV76lt+pfj/PuFCLYccqxIXTNPgxH9ibCKTPIoN2?=
 =?us-ascii?Q?e1Y+Rgu9aDzmY3QUBP6Dv4mNxzukZPSbiBCkLZEuiWLNaUP4WS6ekQ0iWipV?=
 =?us-ascii?Q?+flcAih1AqzF0qAIxuOHCdgWjTehGIIV8MZY/vhazBOAdNtg7armJ5Jlw6AC?=
 =?us-ascii?Q?FJRgew4nnmNJPIUkFmlwygViAsPtOJ5p29H+0j8IHjicEbgHY/cSHFlAGq1e?=
 =?us-ascii?Q?uIPCZlCGjI6FCq/CUnV/I3qcUT1Ps0QbFSkx4BJBqLf8nr14sFS/hMaPBMiK?=
 =?us-ascii?Q?GDQehRKadKS3g2UC61ktuTNlppY5glAP8+A+rAWY0Oq5/a1tq+I71VT5mWmk?=
 =?us-ascii?Q?4ICRwXCB4HVehOhnllc5EUjOk9lskCNfYxA03AqI6GPWs1Py4ZGNFuX00A9R?=
 =?us-ascii?Q?Bwci8cLyXOZ398mwYg+XCwzIG2Ntjb7dno5C4gblsRAeXFya+/5P3dT5HAuy?=
 =?us-ascii?Q?lc51ZOyeMc1ALCFtJf4pNe8tmsZNCOhmJvajDZW88sYAszZL0VLKnEu3tkKA?=
 =?us-ascii?Q?ub9ChNiFrJNeBIZtyErbI1oePp9FDoOenO01mVHQmzVDvspZaWRBV64NZo1q?=
 =?us-ascii?Q?nwgqhimPXKthin2eGJZz5Li+tCET3Uff5If8Bowzn308kMOyzsFBB1BWA7ND?=
 =?us-ascii?Q?+yOWR7QRFPnm2hHn+EMReYG6OnN/xHNO0vDGp3OAiBaqg4T/Dmi8WQQvVUZ7?=
 =?us-ascii?Q?I2Ql/eqE27aw+nCQ1v9yo8w5KG70b5LJtohFYy2GnDwxOyy6UodjM953FkIp?=
 =?us-ascii?Q?1Q3qQfPRA1TNlKYCnZEcyVQ/D2wLBU7UgChWNibyURUHC3k4GWcmXkdSN539?=
 =?us-ascii?Q?DDqJ+yWX7cVPatXG41bp1ScYgC6SimmP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1044dde2-4112-47e7-0ffd-08d994d7d72a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 21:14:59.7463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tony.brelinski@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3427
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global
 reset
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Thursday, September 2, 2021 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix delay after global reset
> 
> Recently simplified i40e_rebuild causes that FW sometimes is not ready after
> NVM update, the ping does not return.
> 
> Modify the delay in case of EMPR reset.
> Old delay was introduced for specific cards for 710 series.
> Now it works for all the cards and delay was increased.
> 
> Fixes: 1fa51a650e1d ("i40e: Add delay after EMP reset for firmware to
> recover")
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
