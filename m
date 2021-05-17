Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D99386DA6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 May 2021 01:25:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63A8C405A4;
	Mon, 17 May 2021 23:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SwuPO2KBGSWm; Mon, 17 May 2021 23:25:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3062B403E3;
	Mon, 17 May 2021 23:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D07EB1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 23:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF0E940109
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 23:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIDrH-RyhIVd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 23:25:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1582F400AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 23:25:42 +0000 (UTC)
IronPort-SDR: GAiWsTZVnpNK8jQnZ79xwoRmpIT0Eu2un84hF7hi1pzaNTkT6UnpVipY0dToOg5n28wzQUS2gq
 DXlUBxBjadSQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="221632108"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="221632108"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 16:25:42 -0700
IronPort-SDR: sbbOm5XFcLfFN6GQgJoOZjkcootmno1I8GLvIQpkU6j6fQ0IudSMQR1ko9v+4Wb8GVHwx2LUAL
 vdYSFvV6lzlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="393719788"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2021 16:25:42 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 16:25:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 17 May 2021 16:25:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 17 May 2021 16:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFagqURbwhxN2+9aC1AWe9ybHOA6DkoUs5qdWoovF2jqZTD+KrrnBaSDBF+b8WZD9TidzENWjrOxaYnypsCPyFWh2IuAXMQGZtcCpXIwUfyQSlMo3VX8Du09BSqGIPhoxTeHF9LzrLRupu5h3fs0SogKkCReNJGDYC6oB+S4tH9HSsFy6Gd/26RGSGxDPMygM8UM3RrOUfMcdG3k4O6c/Hz4Sko2FtEICvppY0PsZRVci0Y0pAicZbqRu/bDlnG7YtYDnHrbxdAhw1lR4kA6gzytnYmyvZ6Vas1NLx0gyUG8pTQvFtVrq8GoG25OQ5yyGBJiuw/sFpCNs64jX4eDLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcAI0xSthYGhFHmfuhvI0IEKCMkK1getVxCg5K7/pFw=;
 b=Oee8gtFSmcyq7MPm+EwJvB0U8ov8+TOBN6cNXVZgeO1hIykuimtLmUYMyaVujSSQ59w6VmdvjgVyK0apbuFPXFJDYW8+SXqffeu3rUr5W/ngnclA0kmABJYXsMUqhLwy95Nibv3g22sehFg3V4fPdkdM0aFAzC7QNDKLYXgqwuv75Appyceau7wms1LL/eL64GuWD6WcIb5P/1fp/3KRpCllDyh/W9n8Fbs89KD3d2MKggNJwrwoDua/NzhFlnwNYVr011iSDXhbj/7G6MnRrOD4xZ8fDbPKjzueC/dkv5wgIGGNfQfWwFFT3YhuJJ1IrwiCZOLEARI1gBfsEFzy5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcAI0xSthYGhFHmfuhvI0IEKCMkK1getVxCg5K7/pFw=;
 b=FrnGlqkaGqLCViqBVbh1Siex356y5pZI6f6xh8MZmuibF3htfYslqQMtWcvTT0QtdqIfs0JAti1QoWXsRm80pDw5ayJ1xAHwFzB4NxltevFF1chmaQyCy4DGs5JGQ2NGOlnfytAcuIsd6vswE4guQDNM4oFbQdHk4tBHhFLQr60=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3007.namprd11.prod.outlook.com (2603:10b6:805:d6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.30; Mon, 17 May
 2021 23:25:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 23:25:40 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add restoration of
 VF MSI-X state during PCI reset
Thread-Index: AQHXSyfoLDH1ROHh90mUXmSyRrG1eqroUjwA
Date: Mon, 17 May 2021 23:25:40 +0000
Message-ID: <f74cf9ffad279a30308eae3d2805d9f33479f745.camel@intel.com>
References: <20210517142818.288238-1-karen.sornek@intel.com>
In-Reply-To: <20210517142818.288238-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 830b7ea9-4ca2-49bc-b121-08d9198b1584
x-ms-traffictypediagnostic: SN6PR11MB3007:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3007BD8D384D56341BCC0BF9C62D9@SN6PR11MB3007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f7Sku/OHlGNY/y61GHAJl9NCAKSCv4rzTPZKm+a4hbW/om49dMvGB9/7+aTD4a9C6Niieg2NdHx+IN9oKgx5VwYmPmw1BivDv4sUc2b2mhPlBIxrL4M43vW7Z5Z0SJqT70xB4CRujaLimg1E8T3VGT6QDZN2CGnpj9OpjeJ9aD31N2THGKIiCo304B/5KIfhaJ3tqQEfIoMilpoITy/cl5fZY3Xrf72MmsUGjWMVWvDLNnxsxwhpD2MCf+aWtfDgHpYMKT6Jk5QBc9qeNARYshYr9ncSnarGRoYk/J1LDwg7B72wwV/tRL+S3SkzuHn5KBDc/4wEmTCUeLGVBGlRlai4WnnAM9IYlcTeEijSLbEZdKdnLpGqv15IAQ1FAJEtVV9lzHgNpN0hLh0w8K696Dbv6Rr0y11xs2JZUzJbsOKwCgwIVPRWZpI5kZLyeemwPQzfpJG8FCet46VvDSYHdmBrMLIv5YgHCe4XzVPTOXVAWOL2qwUOi9zUFEddBNvbnzfg7qKycHw6+XBytm/J1us8LIg8xxzYzJW1z8hOhcoDI9SlmkbV/mZ+wPKl14NsHzsSyk3HA94/uHECL6L4rk8Um95rgrTc15a8TwVzqq8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(396003)(376002)(136003)(366004)(76116006)(5660300002)(66556008)(66946007)(66446008)(86362001)(71200400001)(91956017)(66476007)(122000001)(6486002)(36756003)(83380400001)(38100700002)(64756008)(107886003)(8936002)(316002)(478600001)(6506007)(26005)(110136005)(4326008)(186003)(2906002)(2616005)(8676002)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?RU5IWFJOZFZSZjYvcFZ5YjVJbjJxajJpYUNNdkNGUllwZ3ZUcDlRelFRQUlS?=
 =?utf-8?B?c3hNeFJTOWMwTS9xTWxWNWloTU1aeUc2emdZanh0ZkY2NnRGdFQ5ZEpTa2hK?=
 =?utf-8?B?bHhCS3FqYzQ5WkpqaDdQaEw2QTRZNXMwOGxoUTArK1Rnd1Q2WVExNTRhV3lX?=
 =?utf-8?B?bFJUZy9CbFEwMjNaY0gwRnc3eWtubjhSbHpGOVBBS3BnZGY5eXhQUXF1bHNy?=
 =?utf-8?B?OXJKSVlGNGZxb2JNVzVOUEJ3a2F2QlB2QUszRHNwb294UGtNNnpIQ3IwazA2?=
 =?utf-8?B?aWNwSzdkeWZYbmVwVDZmczFXdE1ucXY1Y3ZEMFVlaTlRK3hnYm5PbnJrQ0Ru?=
 =?utf-8?B?d2N5MEVTMUpKSzBXQkFQekdrTDZiOEVXa2k1YVlybFh5U3Y0ZkJ4ZGFvWnN2?=
 =?utf-8?B?NFZVd0p3Um1ocXJNTTZVMDZScVNnMlN1YjNwRnU4VFhEaHZDUk1Sd25qcG9H?=
 =?utf-8?B?QjZmRWJZNG90NFFxMEI4S0pSOHd2MlZoU2lXVUFUdVhpendOc08wUUNQNTRM?=
 =?utf-8?B?Z2RHMU1mbDYxRWlwMEdkM21veE1XUDN5b0xieXhqVndxeWJmUllTaWl1QlA2?=
 =?utf-8?B?VWFBdnozSUkxV2tSKzBRcE5UQUZ0YXYvT0YwSGptS2dZYkthTld2WkMyYW9N?=
 =?utf-8?B?bG1VcGtER3dyOERwUUJzd1c3Z3VLeXA0eTVVemxKZTBNcXRUblBqWVhCRUUz?=
 =?utf-8?B?QlRKdFMyVzFSNVcxQmhOSVNIaW1PZXgzTmpvbDZhOXJjckFPbzRwY1ZRazZQ?=
 =?utf-8?B?cEp5d1JJSnhKbm8wZDVCVGh0eUtvcG9vT1Q4N0k3SmlPd3pINnRZUmczdjNr?=
 =?utf-8?B?T3VZWDB4cXhrbG56L2tLM08zdDU0ZmNtTXpFdlg0ekJkWFdaNnpDa2dOMGRH?=
 =?utf-8?B?NTdyVUVjbjVlQjdEdWo5WWN1VUpUNjdadUJwYklFN3g0V0UyYnZZbVltNUpO?=
 =?utf-8?B?azgvWEk1S0tIU3haZXp1K0lqa0xHUkhnMTVRVWJBTGRwS3RJM0dkVzRQK0Zm?=
 =?utf-8?B?VkV4RmY1b0hQZ0Y1TS9aYXRJRWF0YmxLbGxPNC9TUklNOGpTUk1XbE1zSEYv?=
 =?utf-8?B?YkZBVzRhb053Q2xyRTBaRmNpVVM1N2Q3MC9maWd0Zms5d1JCYlpXbHExdFRR?=
 =?utf-8?B?QUNpK0kyTFA1OHFSQTA5cCtsdzgwNlhrTEM3My9rOTk4REFHTWhUVm5VQzNP?=
 =?utf-8?B?cEVkQXFhbThPQkdXamU4ZmdQby9XUGJoUXhUb2RMeVhSaWlFWnFJM0ZCaTVy?=
 =?utf-8?B?QWs4d05UNCs0RkFxZ1VIRldrRkwvT25VWVUzcWMzajlESmRFSnRlUXEvUkxk?=
 =?utf-8?B?cUxJek42UnhURlBPRFVCT0gzdUhoTWlRRkE5dnprVE5pSGl5dXF4dWd3R1JN?=
 =?utf-8?B?SnREUmt0K0xteEVJd3BLdWhNOHVuZHNZbGRhZHZ4bGprYi9vM3JDejBGb2tZ?=
 =?utf-8?B?eFVrTkcyRSt6dHVvUEpZQTJ3WjkzNjdqbGxuOCs0VHZlT1o3UW1zaGJmblc0?=
 =?utf-8?B?Z280T08zNXZJMmE5ZDN4Q2JXNTZkV0d1bEJCV2N3MWxiL3FnTjFEamVwbnJ2?=
 =?utf-8?B?N1FtMnljOW43SVVSbTl2amo3UnRyNm04SDZoamEzZTJueEt0OHgvV1pyY3dM?=
 =?utf-8?B?dCs1NlQ0VE1GVlJXdmNLd3pTQk8yMmVFMUdVL3I2c0pBOGlYTXgxNGcwQWRS?=
 =?utf-8?B?QmowTU94elNWNlp0RE5pRFJVWS8wN0U1bVo1OGpyUzgxWGpIVlFNcDJOb0dj?=
 =?utf-8?B?UlU4aC9GYWE1Z3YrZ1d5TVVsWnlyYmg3SEY1YUlHVVk0S1lwZG5RYXh5Y2Ja?=
 =?utf-8?B?bmlUZmtqY3V3b2h0UlYzQT09?=
Content-ID: <38F30585CFBECB4FB8B0C6271DE955FF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 830b7ea9-4ca2-49bc-b121-08d9198b1584
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 23:25:40.0552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+AxMBjmvCDyehNG+4OvHVvjlCd7+PAWhTRr2ZCHy+aCvHiZRYUH6tRulLmjwEsf8Xx+ZMq5LXM+KAIXz+lanVnajxhJ7/pK8RkYu8ua4A0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add restoration of
 VF MSI-X state during PCI reset
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-05-17 at 16:28 +0200, Karen Sornek wrote:
> During a PCI FLR the MSI-X Enable flag in the VF PCI MSI-X capability
> register will be cleared. This can lead to issues when a VF is
> assigned to a VM because in these cases the VF driver receives no
> indication of the PF PCI error/reset and additionally it is incapable
> of restoring the cleared flag in the hypervisor configuration space
> without fully reinitializing the driver interrupt functionality.
> 
> Since the VF driver is unable to easily resolve this condition on its
> own,
> restore the VF MSI-X flag during the PF PCI reset handling.
> 
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---

<snip>
 
> +/**
> + * i40_restore_all_vfs_msi_state - restore VF MSI state after PF FLR
> + * @pdev: pointer to a pci_dev structure
> + *
> + * Called when recovering from a PF FLR to restore interrupt
> capability to
> + * the VFs.
> + */
> +void i40e_restore_all_vfs_msi_state(struct pci_dev *pdev)

Header function name doesn't match:
./drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c:163: warning:
expecting prototype for i40_restore_all_vfs_msi_state(). Prototype was
for i40e_restore_all_vfs_msi_state() instead

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
