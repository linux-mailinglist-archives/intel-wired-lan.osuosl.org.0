Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D96D5BDB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 11:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8D1B81AF6;
	Tue,  4 Apr 2023 09:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8D1B81AF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680600333;
	bh=irTMveZ5m+wNQ2bbgFUwTAOnHHKHix2VAk/SqQfk8hs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8dVcFvWrvx7M4SUr8C9Xe+o1PM26VFGuvot52vHrY56qWNfqpIf/NdgpFkRQU91PX
	 I81nVATIQE5XcU7CXRPDQCLgjpvuKLsaBUhn5PYsf8g5BXryct4oILCESGVe5su51Y
	 7WVF9ur7nWB3bOXtpJuth20O5X8xou0rIdEujRDjKvWbnxXkOx05HlcjqMji9rDolD
	 Tfg9oj1ztFWQTV6D/emezu61ss6i6DTfhgNUSgivsOVi2pl0TuJc1f5CnWfTuvVP2y
	 4b89lnlVOeOfbrMVZ5JPF0bi4dXXctej5qGfwng15Kxva9OvoDKXc/qghDoDwllTQZ
	 4YBLv04xirBgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-bSiYSu_XeM; Tue,  4 Apr 2023 09:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB54681AF5;
	Tue,  4 Apr 2023 09:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB54681AF5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 255891C27A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 09:25:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF1924099B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 09:25:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF1924099B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnHwmPusNibh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 09:25:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E14D40996
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E14D40996
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 09:25:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="428418488"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="428418488"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 02:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829908217"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="829908217"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2023 02:25:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 02:25:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 02:25:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 02:25:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9egBSXNVmUrD59caT2CtUnq4LJmyic1xWTFTx1ORW4nu272xaSeS9wM3OFpDCK94J2oocbwdDyK5ILCL0f6Jqj40afyzTIWr/eoB/wwYG4UQlKIu/33GRu2MzbREcEbt/xa3pTrEkm059Hno7tEYr3cOqeQGxrr0CRrsdEp3XAXe0FDyqkRF00S/NPUCyYAi93tquHvrKq8TB22HARJ8W0vd4ZnDkCz3uRHPVb1Tjv3EQfxV0/s90PmX0n66y//KgV/z4FJ6Vk0VnIwlEzPWj4bP9v08bvMKjWOOd4Njr43Qja+f9unsjarbFF3IdeTWuPThiWxnlNoG1jdvUDvcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+M05HIMTqZbDMEm1KF+aN7bDgbNckt/kf5OfKr+s9w=;
 b=k65TRwbXIuQ4ed4z6EF40qv/73TjJssf8SfJ1YVneAgZ6b42BaxyPfoSgaTSraheTFTVhUEYY6adyF1knQgTVPBcunxTSTsBXEFCTvZ8Fki0sPuj322KmfBfcsNDtoWsdS/lc2OZDIsO+gLb1tYgYETg9L74JwmC4qmz4En6SY/a8c+vrvgYzNrOmz3dRandYrTMbsQh4qCUdRAr3dTMF2sXSWTdF3v58k9eZ6mhl7GWtTsOU4oitK9ZIBo9Vo+lR3walnLWb6fzAeVQR41JXt0FTewtW+5E0VaRWST8eYYuus76SQViivc9bVV0e/88aFLvqTgJv0gDRSHCin2O2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by MW4PR11MB6838.namprd11.prod.outlook.com (2603:10b6:303:213::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 09:25:22 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::bf39:c299:c011:1177]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::bf39:c299:c011:1177%8]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 09:25:21 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next 1/4] ice: lower CPU usage of the GNSS read thread
Thread-Index: AQHZZL89sSVSkMdLr0Sl4EZIHAEuz68a5RDw
Date: Tue, 4 Apr 2023 09:25:21 +0000
Message-ID: <MW4PR11MB580066F8B4EC54948C0B43B186939@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20230401172659.38508-1-mschmidt@redhat.com>
 <20230401172659.38508-2-mschmidt@redhat.com>
In-Reply-To: <20230401172659.38508-2-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|MW4PR11MB6838:EE_
x-ms-office365-filtering-correlation-id: 0d576459-9f45-43ed-b666-08db34ee8381
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1RFBKvjwGKNaig29A+eOR73d6m9MNWUPJGnLcJUr+qOQVH6pc/mOy1Imy9ipuuaU5jnB0neYubkDia7f0B9HfaWZzOtd4YbBQ+WErgYpF9Idtp4fWKl2cO8lG7gsCEEsd4Ffy4JB0+H7mu70O4cQAdqLWoI0FKGzPzEvQTe/YPlTeKglF2/tJlFzwW0YkLCpLbO0pgGTK2ryCkT1d7pnw8/shiHI3MAN4pMWYlOZRwCQwZEH/rB20eKbI3SNSofEUesbINtdFQb80aQoLtLqj2pYBtNGV8TWz7opOz5r3kGXuDfBRWCTUucIGGjkPEhLywnaAUSfqdxsxeHlJGfGGnPRTDaI6xvoh1qoPfXDuGfwLSLQBeQcwYiFSumLxrAx2d2EENTmlsRq6Tx4PMTUY3vl8uW1udJWKnsp41TUXoj9GPIWx3URCU/K8nmtmQ7YbKe3Iq62xkicw+Q5vWCzKgOpyCGpfZd95xhMxpMV3hw4nwiYm/z4JOms+lwJvltfHaxkDShllhMJJykMnH+M/SrOSbQnBdjpLih1xRnhtPAi69u15uU8OMxpR8X6oMxzaWo8EP2UXWhB8dEB1h28RvrHq4iBzw9Wx1hzYX1TcPm9RUYerrZawwmIw6PaT/Xz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199021)(55016003)(76116006)(4326008)(64756008)(66556008)(66476007)(66946007)(478600001)(8676002)(66446008)(4744005)(110136005)(41300700001)(54906003)(52536014)(8936002)(316002)(5660300002)(122000001)(38100700002)(82960400001)(186003)(7696005)(71200400001)(6506007)(26005)(9686003)(86362001)(2906002)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ReqYv6esZTmuXPL/LNgtMQNgwc37D19ARG9XadktR+FVTJuk5JL/a/3ZbEJq?=
 =?us-ascii?Q?/iHa9Sl0G90WEaMIE/xFx1w8QNu6ZWn3Rab+eeKM289gF+pYQJjGL+LioUth?=
 =?us-ascii?Q?vfWYN0BzLOqJiEcN6U/1QrY4g8QUAe6mO7Zb+/y6cLmsVmHJK3A1ts+V6qK4?=
 =?us-ascii?Q?qU89H7W/DRU8fpo8NECk7DKRvBZXO16BoL1TPf4ZUlsx6HeSXE5uPhBCxAK5?=
 =?us-ascii?Q?GV15IR3PBYhny/z9sNi6OqWbNYVI5ExRX+RaQnIiydjHwHI1M2446hhZ5F2K?=
 =?us-ascii?Q?jkxKzXlqArsJAF6PCAOo7rk7Q7rrxbuh9WtErq3mZ5QBT7N+mkJXouhqfVKJ?=
 =?us-ascii?Q?TflyeoRV+8G79bYL9i8eYc8aATaijapN1bfvq+wW3l9vBVVSXVKi/Odd8Xd8?=
 =?us-ascii?Q?LwqMfdbQNaLY5MKDz7Kq+aK54lr6Iyucv6H7IZ19dv43fsyDNaqUcv/T+pTX?=
 =?us-ascii?Q?kk5R9Xx6Oo//b6u3RiFOMy5H0G6qjj9cDlEFacN7qfQEWRzAWSZGdYDl43SB?=
 =?us-ascii?Q?VlERBdRKUQ/ygKbi5nhVjQQ5U+ach3xXMs22+5UwKp3lfj6WnVR1ZhNaScqo?=
 =?us-ascii?Q?wTUyvDvPBY1Qm1b2v34IQdhHOKszQmuGh8UWY84uqhN0Wz7/FypjrHMrevEP?=
 =?us-ascii?Q?eOAS7JlY3FdPfUhYhMKqMTvwRQfcMM/0t6VOVGveTSZkFPxd2cKy6GM8cvMX?=
 =?us-ascii?Q?ooU3aLeCLGkUMpGVoLyvbRYotTCrqblaKMvbZMJjOCnBc+DXX1byzYMClOKl?=
 =?us-ascii?Q?6EKGWaXMwfDb8m1cDsNnEYpguvVDxCU1J2jkxGy50OZgT4IsB+UtF/P6qTbG?=
 =?us-ascii?Q?ks5lyHxIiktjmZIj7raM4XvBw9xemiJ6anKmfhDXdBFksERPnFK5ph8vWJQo?=
 =?us-ascii?Q?MW6leUw7KNPXLRtOC19M6rPvLzEECDkM3hKEbvm4R0B8p3tk8Wk80UWMoFh+?=
 =?us-ascii?Q?gt9ivCsiyuYlD8g3+3Z52VcRvMP0ChOuCdOk65l+CrGarkBugD8+WMdjMSv/?=
 =?us-ascii?Q?dNO68i2XRa/GEMVbfMge1aNUb2gh0tFjJzOdO7/2DCIr8ChLZF56Xvx59caX?=
 =?us-ascii?Q?7ClpMut74Ox+dec03EfTkcJSLGts6+KCY0uWM77mSGRfp7OpNWuGu96rlD5Z?=
 =?us-ascii?Q?nLzbtJgyHHuT2FZlDS4sPH5BRLdySVbTC7E5kw8HmQAqh1XsHnY1zr9NApIL?=
 =?us-ascii?Q?gc1Exl+cf/kE8z+if7y3hNll6yGvEzyyvpXvROfeMsq/xIQ5FnJZ07e/Mb8p?=
 =?us-ascii?Q?hDMpEZ25lXsLnZuBxMpaezAF4GBb62P5Us1PXVkg0XsVI0Pxk9qW3aWP2eJL?=
 =?us-ascii?Q?Wqlv1TxO3vFfO+h+wZc+SPicTso9sA860AuIquOtm5sZdy3bdNZMy87LanOH?=
 =?us-ascii?Q?Dyx537Wx+zMxRN69KsxMtsc/NWfgBJgjH3+ZYY6I2UKLNXtCh/n8JPRxLWMP?=
 =?us-ascii?Q?5zL+1f8a3CJEtZKozjq6vvHqbZUGvtuHVO1sxtVMCGVu9XIRPXC1rRkq81QT?=
 =?us-ascii?Q?gLF3r9SLx6lFM14dJOYNyudApBQJQDA01IlDSMfSl5P/iID1psMfTBHlr+cf?=
 =?us-ascii?Q?QO8Wu7waHz2nRbmto/zX6wR7pznxXjWkNxzn1azK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d576459-9f45-43ed-b666-08db34ee8381
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 09:25:21.6182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qPh0d2hpPLQrMTH6zLwQbftwwHtK1iXcVR+exVU4Jzbi4vT7h3IvzI2hI/GePHOE/+BMmIFBije4NsDWcDKKQVfNlbRjnNy3rN2g4bexAlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6838
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680600325; x=1712136325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X+M05HIMTqZbDMEm1KF+aN7bDgbNckt/kf5OfKr+s9w=;
 b=c9hNZnjmop07RTd3CcNULnmxjEJ2nzQbTR5yvkTX2fRFilug72GnYO72
 22f0g8vrUuhvTZI5Qyw+DgmBfJS7MTUhBBhtQ8Ob0RGjF+ibUqWECfBMo
 tQSHatFxZ7p0N8+Y42FPfA1Uu2ReQG+i56DXWlemvWErBLs0JR2wFnDOv
 9baUzPq2skNAGCzLpE4/SLckcGCDQC7n0bjOManyPYuHG2RO4hGcpn9Hq
 j7JeAnB4EGRCRIaHwWi5K5HOuB5XADSNg/DDiBqorU8ctMapYk+O1lYv3
 7MqnJvjerQ7UPAf1GQYBQ0fM7BJC4MKQriziPyV5CCYwcadtmtlHPqbnS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c9hNZnjm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/4] ice: lower CPU usage of
 the GNSS read thread
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 01, 2023 at 07:26:56PM +0200, Michal Schmidt wrote:
> A simple improvement would be to replace the "mdelay(10);" in
> ice_gnss_read() with sleeping. A better fix is to not do any waiting directly in the function and just requeue this delayed work as needed.
> The advantage is that canceling the work from ice_gnss_exit() becomes immediate, rather than taking up to ~2.5 seconds (ICE_MAX_UBX_READ_TRIES
> * 10 ms).
> 
> This lowers the CPU usage of the ice-gnss-<dev_name> thread on my system from ~90 % to ~8 %.
> 
> I am not sure if the larger 0.1 s pause after inserting data into the gnss subsystem is really necessary, but I'm keeping that as it was.

Hi Michal,

We were planning to upstream 20 ms sleep instead of 10 ms delay but your
solution looks better.
To align with our code, ICE_GNSS_POLL_DATA_DELAY_TIME could be increased
to 20 ms.

Thanks,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
