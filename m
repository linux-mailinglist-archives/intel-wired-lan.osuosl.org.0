Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA5A365E36
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 19:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5848D6080E;
	Tue, 20 Apr 2021 17:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RrWjmts67W6F; Tue, 20 Apr 2021 17:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5118D60ABF;
	Tue, 20 Apr 2021 17:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AD9C1BF427
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 17:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2971460AC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 17:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hA0AR4Jqxg1a for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 17:09:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FBDB6080E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 17:09:03 +0000 (UTC)
IronPort-SDR: Q353YIjW1wMIDiUKJG4mbXBfuDgKbZCmgtj/ZEWnGUQ9bdfLYPU4cFIMQYWAsudoXnwKcgRVm3
 qexgjC+dXHCA==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="195103945"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="195103945"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 10:09:02 -0700
IronPort-SDR: uPmkVZdgPCnm4EFnJ1/8La09uZHUNr4mekLo0IjRSYiqAXdFOzbR/oIS4uUo8gWzpPlrqHINPd
 jTp4rW/08aSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="523889666"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 20 Apr 2021 10:09:02 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 10:09:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 20 Apr 2021 10:09:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 20 Apr 2021 10:09:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5PGKNxss8a+t7TeU98YdUWOl572eNhM4ICOqrbIUuFR+6EKoiO9CjAqBsFidn/JXUUJhMtj7fNi3awJ+pNYftjqxeb/a09tyiYmYIcLW4vCGuH/cnQoBhR43z5d6aobnZBmZIVshM7qdbZSnIu6vUZqUogKO3NOYSi9eZuA6GSbiATBFgtJoTZiPHdzzkF8GcbwrUz/zirPl/01LEHxPalROYaPtt1NWnA7eeqKNDsy1e9lRv3yKGiTHs7HLWYWjjAKHl7jO4+hGgAofbD+EFho8WCmVKcQq266mzMyej/fKAMXxVaz400jaoURihvZmkPBNS25/d2GnPOOwyxJ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=keO1p7/FYl3Gd1mvouQy+AMduci2i/pocpL+DXNH1jc=;
 b=ExGre8unNuhZQUw8rwtmTReMfuT5Ddinzl/QDfv/j4eiZaDASTxagNuVku0zLXzV9OHjgD4a0UehslmjMVyqpwcpbr7wj3KnhZFKD4FgjBDsn64ND5aLYp9HPVtpx5eXWOZMQ/k1jx4N5UHRE9bKOPf3ybd6W3ZYQIGjtWoRmio3v6Lm6Fjw4Wx55Zg3Jgwq+B0KGYRb6coUrMFqEV75hwI2oM/7rZhQV8OR2nWRKBZbbAoA1ZHhoFzQnGtWsN5RRSbcSllunbKkJvD1rAkbPwy87E6t2UnGW9ObKL8J/P9RAf3TMP4260PYczb3JpfgMT5A1pFmMu+eAWIVUHYUpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=keO1p7/FYl3Gd1mvouQy+AMduci2i/pocpL+DXNH1jc=;
 b=lC0Tf+Ih1H3lv8T3okT1ftka1NMmSaQBL7QJW21qUijKIP7ziBS64VlI94sAbB5nME9PxWo1kWQ37FiY6leRw3suvuA/nGUSLhQ1S4fDKFyiPztKLOvv7oFkPy66604cGEmt1TOvRiRmr9c8qi/TZKIVgddsKefgbNaK/z+M4BA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3277.namprd11.prod.outlook.com (2603:10b6:805:c4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Tue, 20 Apr
 2021 17:09:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 17:09:01 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2 net v2] i40e: Fix ping is lost
 after configuring ADq on VF
Thread-Index: AQHXMsYXa6cYkBAnuUKRCxKGZZuOyKq9qiuA
Date: Tue, 20 Apr 2021 17:09:01 +0000
Message-ID: <44579dfd8c0d0147020b0437a45440134d5259b3.camel@intel.com>
References: <20210416134054.58330-1-eryk.roch.rybak@intel.com>
 <20210416134054.58330-2-eryk.roch.rybak@intel.com>
In-Reply-To: <20210416134054.58330-2-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ef9b22d-515f-4ce5-7f41-08d9041efe95
x-ms-traffictypediagnostic: SN6PR11MB3277:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB327740CA02FA6935C454E6C0C6489@SN6PR11MB3277.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: msaR8elKzGQckdYJ5PVv7Nv021GHHcifF/LuwJq09NVEFsHse92HjHxlhvSV4KtBfBp862IMRiHRihuRljk/BN6AX1KaA/jwlBgDLzcQoAZKqgAkOKxo7s5nqJZ4G76EVfiTqurQq5OVmOvosJvCYzWKJ3WYFlEcNMhMS64knxLeL1y+6BiwV93Q5GpkPYSqL8aWWUSExcCQsNEMzNZa9etg/jrfMZWTC4Y3XPDyaYLuGb/jQom9h0/a/u2HSS2jFLieOz4ZgdQOUx6vcnHOHl9j61qJvjmS8nJuiXC0AzpDMnULIiU/IacoaqLzQulZLTay6QIeNtdvbgYiiRSFla20SgcEzpM+4DquHzFjinvK9b1i+hFt/dQ8164la3kJXfP8uUxny5qwu7uyiBFNbzl+4zM7oEUHrDXag/0I7dhabWz1L1REFZlMeyo474lpjmRZ0g4vjyYx6S/okrXR+ZdmEPWFhEUSwWGnSUOCOy7XxyIVuH04jteB1fvidYVfX6X6p42Y9Y/MsndtkZQDiMyob79hlYffqmEV7i0Arb1TxTkTKTkvF1XzS8CkTycYaZCeLg5bqH8hniz87gH+UEzMpfzx8xnRgGGgJzEn4SSo7tlLq45Y6L+fL5b3TnwuFGQOMLPhg7l+c4TYmu+YMA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(366004)(376002)(39860400002)(346002)(91956017)(38100700002)(478600001)(186003)(316002)(107886003)(36756003)(6512007)(76116006)(71200400001)(2616005)(6506007)(64756008)(5660300002)(2906002)(66946007)(4326008)(83380400001)(66476007)(26005)(86362001)(110136005)(122000001)(6486002)(8936002)(8676002)(66556008)(66446008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bkF6UFhzbmFwN3lZL3FUdkUwaTJWczZNVmVLUkF6cEFVZ1V2djdVMDhLVEZB?=
 =?utf-8?B?R1R1bDlsamwvc2lmUVI2QWJ3RnJqeFVJRE1ORFh2Z2h4cWMwc2tubFF4MWpZ?=
 =?utf-8?B?TkpGeERrWUpjc0NYN2tab0xaMGtxQUpoTDRONmZ5ekhVMXN5eTFkTmpSWXhx?=
 =?utf-8?B?MHJrakpyL1JEUlFWd1NGUTlpWERQcGNuMk1nYU1qNnBKYVBJOHJxU2pSWkZT?=
 =?utf-8?B?STcvUGs5VzJEbzNxaGRMcjNEd3ZLaFNrSmttUGJqSmViVVhiZmppUGpaMXh3?=
 =?utf-8?B?M0N4dlJSOEw1NVRIVkxsam91WG16TWFhbmVBWFBvSUQ5Njl6a1htdnQzWjND?=
 =?utf-8?B?aEtMYTZwbE9Oc3loOGRpTmtyVmhhQ3JmSXYyN1NCcFBZTUtBNGI1U0hPNFdz?=
 =?utf-8?B?ZlhwZ0dNaGFVdmlQM0dUdjlTVjZwejlUeVJCWU9XTzR4cDdvcEtpeGtHQnV3?=
 =?utf-8?B?NjVLa1VxTE1oRmkyZzg1UE9HSktrMGtvWXI3OGtTSEdDVlJwZ3BQMHBkcGJH?=
 =?utf-8?B?aHZyK0RHclIyRG9zdHBWL2s1OWp3TkdpYTB4UzU5cnFwbmlZR0lBWSs5Qk5j?=
 =?utf-8?B?a0dZZU9NRFo3bDhvWkt4ZWJPQ2tuMVVoWEtNVDBEMm5IVTl2a29TRnluVyty?=
 =?utf-8?B?d3RTVnFNUmJCbzFHejhDRGx2REZZWWE2R1g1QkRSVm9iUEdHUmpZUVJTZDcr?=
 =?utf-8?B?cmcrSjdIb2c1YTAyRWxQZkxEQnRoU0VjeFZCZWpWallNdmprL1VaNGpqZnQr?=
 =?utf-8?B?Rkp0dXVRTDdiTTN0aUxUS1dRY2NIWXVJT0pmcTN3SWhUdVUwbG1hVW1yd255?=
 =?utf-8?B?dmYvM2tRUzNLSmQyOVVVaGpoSTdxekRxVjVITUt2T1Y4dWdYYVNnWEUxdWd5?=
 =?utf-8?B?czA0K2VGNDJxMWN3K0M5Wnh4VmlxZWhjVlBGYXlCQnpNeHg0RWo3Q3lYQUty?=
 =?utf-8?B?WVRqZTRud0xhbDJ4WWd1Yll6S3VUSXErcTFHWUY1Z0Y3c0l3TDlhRmFpalFD?=
 =?utf-8?B?UlR1d1FkKzkrU2FDODJHYjc1dmpwMit6NmlaMksxVkQ5ajFXWG4zc016cG93?=
 =?utf-8?B?VjFtRDFReEtiL3I2OUYxZUx0dk5mWXA5SW5Tb0FHT0FqWmFaSDRNaS95Mldw?=
 =?utf-8?B?OThjRkdaSStzd3ltRVk1S0VGNXVNNjBvanRJSEZEdzFWQlhjRFBGZWNtNDQ5?=
 =?utf-8?B?VlVScklqbXhqWmFsblBsbnVFRk5WQytnSE93bjJRUytINGVGd3RkeTduajB4?=
 =?utf-8?B?VnN0Q3hTRTlxK1o5bkN6dksyV2ltVEFncCtsQW5URFVUd3pRTk1EcENFa2JF?=
 =?utf-8?B?aUJ2aGZJS1lmano2N3NKTDlNQ1dpWjJxOWpYaVV2N3h2MmFMeStEbmlXcVFS?=
 =?utf-8?B?d2l5Y1BDK3ZzeHdVcnVuTkV5bC9DU1kzZ3ZUNGhIN2F0OEJXbTFQN2MrejVy?=
 =?utf-8?B?ckdhM0REc2taWEYvVHc4eG9uUTd6Y0NmckNESFZNaXBrTEpaSWR2MWJDOWNF?=
 =?utf-8?B?QnRpZkVtSVo1YmNVNzFNN2hpMk5PQ1gvN3hnSnB6Y2dIVWxWb2pVWkFvb1Zy?=
 =?utf-8?B?aVphcU43OTZ4Rmg2eEpOcXU4WElaNFNPaDJaSjRzQ3d3ZXJmODA1bThMTWVi?=
 =?utf-8?B?c0hXWmtVb3JMSGxPMG8wQ3htd0ExS1FXZjlRMTJQZG8wTW1NTjdZL2x5MFdM?=
 =?utf-8?B?NVYrbDN6elh2dVBHVnp6Uld4UlhkVm1LbWNxeERQRzJ5aThsRDdVd2EwMGxk?=
 =?utf-8?B?Y3hlZjJpQlZPb1dOVU1TUVJVVzhZOUV2eW5oaXI4OXpQSkhYNTcvdmtJODhJ?=
 =?utf-8?B?Nk93U01UV0dtbGtIdFpXQT09?=
Content-ID: <2CDF5C402169C545B4C5B7E7AF68CB43@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef9b22d-515f-4ce5-7f41-08d9041efe95
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2021 17:09:01.5856 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U5ZUnmsEhIpPura3h6DORR8F38tNPv/6h+LvMSZRJ8IZ6h+bbThbJMdm83P+1xPcz/2lja+wzhkmCMqMPb/qvo/N5eqaR5uzA1SvItQ1PZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3277
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2 net v2] i40e: Fix ping is lost
 after configuring ADq on VF
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-04-16 at 15:40 +0200, Eryk Rybak wrote:
> Properly reconfigure VF VSIs after VF request ADq.
> Created new function to update queue mapping and queue pairs per TC
> with AQ update VSI. This sets proper RSS size on NIC.
> VFs num_queue_pairs should not be changed during setup of queue maps.
> Previously, VF main VSI in ADq had configured too many queues and had
> wrong RSS size, which lead to packets not being consumed and drops in
> connectivity.

This patch doesn't apply. Since this is for net, please be sure you are
using net-queue/dev-queue.

> Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be
> mapped for use")
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>

As submitter, you're Signed-off-by should be last. Same comment for
patch 1.

> Co-developed-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> ---

<snip>

> @@ -5434,6 +5440,56 @@ static void i40e_vsi_update_queue_map(struct
> i40e_vsi *vsi,
>  	       sizeof(vsi->info.tc_mapping));
>  }
>  
> +/**
> + * i40e_update_adq_vsi_queues - update queue mapping for ADq VSI
> + * @vsi: the VSI being reconfigured
> + * @vsi_offset: offset from main VF VSI
> + */
> +int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
> +{
> +	struct i40e_pf *pf = vsi->back;
> +	struct i40e_hw *hw = &pf->hw;
> +	struct i40e_vsi_context ctxt = {};
> +	int ret = 0;

Reverse Christmas tree.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
