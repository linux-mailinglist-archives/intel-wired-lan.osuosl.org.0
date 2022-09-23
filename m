Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1B45E78A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 12:48:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F8666059D;
	Fri, 23 Sep 2022 10:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F8666059D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663930123;
	bh=cyF3s3ZwLRBLz4HlLA3yAUWFqpM9qzliLy93BTW+p64=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yg3FYdapOL1DjsagU6AlRs1a7PCpdTkY5x06tsBRO6NBlHPs92KrKJtshVUDHoGxv
	 KaEd8eQ3LOIPcB+ZX9VnsMCcbYgUhT6MNS6dIuuOW1yr1iSUsRSkdJK18Q81YQOZ7n
	 XMQMbJNwkxgDQwcylxBhuffrnJCVMm/XiVaabHdI1tJc9SgTEVLbQM63hDMfRpP2KJ
	 CpR2/EUJ5Z+igzQDdYYXGoQoN0nVRWFWT6A2OK+O6jVMI31uHfx8UuzJD2SrHdnzW3
	 OeY4/nuXhFjSTYDtEqkBeV5n+obqhy0kiXZZRAZGLQUXEYlBXDzQfpNxdH3ldvTBpi
	 Gbj0hVv7/tpBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OGCukGHD-LOK; Fri, 23 Sep 2022 10:48:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4791A605A7;
	Fri, 23 Sep 2022 10:48:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4791A605A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 850D91BF378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6312581301
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:48:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6312581301
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KvqyaGXQnZ4K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 10:48:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01B3812C6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B01B3812C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 10:48:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="298165619"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="298165619"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 03:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="724085815"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Sep 2022 03:48:26 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 03:48:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 03:48:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 03:48:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A+WTnhXTgjOYiWbZmj90VILUUF9flvV5vTOkuJDLONSRnIxVrTYV/HFY0OZRl++RvuHjk7PZU+3o/heEe3zXHWlMzeilG7zEJyR5oB+k2A7HALwygUi6m7eUJxhA6smedr5LVvU9WKDTYiYmXwxjMXjhQS2IEQZOOzC5FXQnZ5p6H4sxKUFZHAnM0Z2OwkX1Ww5MLpEkeYMMARx8Or3k9y1iV7rrMSoeK2mJIM89vIctINUhloKOff+KyJbVk31ypDkTfirbp80bje+Hde174FmInKFgkGnpDltwuIJ13PsXqRTEUmGciF7AWMFV5cBS7P1p+dbtoi1JqFpQUCgBlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWY6+ztUvfAezhqVeHiBh/aBQCAEYlHFP5XmuQImEK4=;
 b=VhEsg83/v9exezoZpQvuQvJz/SkfIPaGUrqaUMW8bLek8jzIDlPi+8rUOCCYQKi2JpQ4lJ2eQ1PuUNVCX2ZqZMjsUlq8Nc0R4xn17LOQWrf5rZPU6Xq3+2IqqV0TX8ey3fEUyuR/ZlPxvI8oysHJmHVBgtaHdHcewiAKBoklAk7ZaUm5GrKHBU9JnEyD94ekStRbOFxhJO6/fhfzAzaLhCbuAwfVtMkhnxjr6EbD7Ax/HPRik9wF2qm9TI+u4qqrbzuYSu0p//oNAM6WJk9H1Zl3eNRGhMF/l9DaqdQo7kJDwpPMCXJ3aw6TeebdngO47beWSrASnSuYCIjAlgTZaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS0PR11MB6447.namprd11.prod.outlook.com (2603:10b6:8:c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17; Fri, 23 Sep
 2022 10:48:18 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d89d:8f17:cec9:df4f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::d89d:8f17:cec9:df4f%8]) with mapi id 15.20.5654.020; Fri, 23 Sep 2022
 10:48:18 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Add support for VLAN
 priority filters in switchdev
Thread-Index: AQHYyP2yae3qYGLgrkmFIDC0sw4s+63s4ZfQ
Date: Fri, 23 Sep 2022 10:48:18 +0000
Message-ID: <PH0PR11MB50135A36F7595AB86B74B75096519@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20220915121433.15561-1-martyna.szapar-mudlaw@linux.intel.com>
In-Reply-To: <20220915121433.15561-1-martyna.szapar-mudlaw@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS0PR11MB6447:EE_
x-ms-office365-filtering-correlation-id: 0aaaf96a-54ff-4b9a-cda9-08da9d512011
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XJMjFBOqdDSGSbVOi7OtpEE/Gbn/rsIltJTGFNDFMxzWbBHT6Ad5UINPMZ492rv660NXHFbI5LqpazSqdmqQgThLcdqGBEzdKUL9EuiMl2wq/19javNQoppgX6/agRx+l326Pcqfjqb6sDJjKCtJRa6VEnoK6Y53x078qK6YrIQ3zjWuDB5Bx5F6cyhv16AvO9kej6bQUTcd7fwgLmtz+4YgEyWFThY9bcmT5Kf3GNlIFrZaDlXH27DkCSS6N2AIBFkhJf+xDtgRjTNxomDrqrBvoHFBffV+gxwfTgp6VIMJ3uIpUP2ZdPJVCs3K4NJeUp0XIaEiwlrhy0DAHSGdTqNRmEAYb3m+z1/SEHeohSZFC0CUJhWHMU5RTeu/3irLRJ/8m1QJHzqRo9OUAKSZrHn0Ld6RxbJpUJdoiTKXa6x+H+cl4znnVXjrSTG9Z1LeqpuiYQz87w4rf8GsW4yHO/C6uFXveEeDmAi/9u8513P7l0+3fSQMrmz9OF/+DNmA8mUilDeTWqCCu/LRojoRAI0lu87xr5XKRnpVPW8ZsJnyNsgwR9wVdAwsZfgKquLM31PT21DnszynKMmvoUwTkkxW/5NtJlW0V5rtCPVILh2TxaPOai6I3aQcqcP0mH10O4vgIxqrEN26SwHiqrS3+wMcCLhoG+ZLJphKiJ8ApnlWul3puPIiI38T1yPGHDtpyd/0cBXxwAiRSM7NgEKlKJ53Pg94Nn9SIk9AZbNS5eMFkUwoOUMU41psp9eg9UXaYwLpjv28MEh4ycqBEqisiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199015)(55016003)(5660300002)(2906002)(110136005)(316002)(82960400001)(76116006)(66556008)(66446008)(66476007)(64756008)(9686003)(26005)(6506007)(53546011)(122000001)(8676002)(71200400001)(186003)(478600001)(7696005)(66946007)(86362001)(33656002)(41300700001)(83380400001)(8936002)(38070700005)(52536014)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZVMhMw3CGr0zXS9+Tq+2mmk7LHsRJTqPSc9XTV/Gi9cZ/C8RjmovKX/eLz+q?=
 =?us-ascii?Q?L/kW/6/zFfJq8V4e0A1PX2qsK9O8q2OUIbMFTqv9bfjg2CONB8MQ6l0omhIs?=
 =?us-ascii?Q?SSHA/Gii7W8hYKW0lgk8nh2WSngUQxnalfO6jJYAYRYQ6WXm4f/FJlxiScQp?=
 =?us-ascii?Q?BZFwN8g3nxIgy1X6EMZCOxZxmQtNKm0iZ75sK5oSplgkoXRPqYuUFw5kjtTz?=
 =?us-ascii?Q?jLlT3KWbNEHrH0VL8kZMF0eArVIjM66dEJBJA/rNHVJqpCb1uxYwRUREacfS?=
 =?us-ascii?Q?BlkgwvslF0Xx1HNbng6OsGY86Jb2T4EUVQtB+AfAib/UM+lEzVWhJ/bx1pDa?=
 =?us-ascii?Q?6ejQU7PUs7zr0/NGUT67x+9iMsq8CSqCxjyN2u5o6cJ0SNiGF9RZv1rlwHJA?=
 =?us-ascii?Q?UcSCXNvWC0KlbdtS0i5kALqfVWwCBK83/Db2TtBsS9fFspkeSlOFFLI23foa?=
 =?us-ascii?Q?/Ee9yh1Q0TjdwRbpry+98fDh6i6nzQggtFt9iWnqzEyXyphHE0+clg65PHVY?=
 =?us-ascii?Q?q9rn33vfAXSZcDNo0v7hv1/+nH+tHc5Y4q/FBSe7qch5ppdNcGWaIKH8kCzD?=
 =?us-ascii?Q?Etn5BopOT3BwhdHcxGydXL/6Oer/mrgouP24a8n/OwHJHhXO8ZNdLhN4slbw?=
 =?us-ascii?Q?2qN4zLw9FjpDLpwPqYiGbulYj4AD5kL06DbHiMg2Hp2tzorvs9XnNl+5e/+w?=
 =?us-ascii?Q?jrzkuiswFp3wCNoXBxluRH+l+p7DiBy/5g5pFYSsGTiRsYg8JNCOHhsBmWR9?=
 =?us-ascii?Q?XL4w4sK3WsPE0keujxXdr30p3NBxvw4PFKtNR2mN6CT0UBN3f0hKGmi4AWkt?=
 =?us-ascii?Q?9e1N+dCfSOgsfkKPR/EwFoHgfPC4fXvOa+h/vwFcmtFDXiUpfMgxE9mba13D?=
 =?us-ascii?Q?SkSv5gnUTZ4s52aZJmNlz/NO4oozRFmrWCRN/7prOELcF9eRAhDJsnbnxvnE?=
 =?us-ascii?Q?5yvVu6XQhXtTe1EXOYJIPA5DhYdiLZERki1l6xXeAuYceEESTyt2x2eR1kce?=
 =?us-ascii?Q?3pUBWX+eykCwY3WI1q2tbGjS6+4ATnaMCLPtJV6Xtq+lXnmeL7+JMRC3kXeO?=
 =?us-ascii?Q?DUoVw7inqhPWz4bl3tuFw2YhFSJoGJDFVFsNZNDQABFcox25H8hHvMiyrLFe?=
 =?us-ascii?Q?5ef+W/2Wkd8Ym8SJ60YjIXdwFqbcOGA83lCyn+vww8LW/moCm2kxyD7RF2Xg?=
 =?us-ascii?Q?4UkaUT17GavyOk281++uiPJz+fOQt5KUUHbwLpCw6SPeXWCsFLSvryCFsBza?=
 =?us-ascii?Q?t1caNeyXDzw/XTWgdPJyriBXzG3WqOYUaB52WVznhFwMOHwYN89mQx8yOhNC?=
 =?us-ascii?Q?DSQkRJrVbK1dDWiPDlEwEKiMtGWc6GROLqyI1tEI/WxqN/muk1Ys6IdAUoFx?=
 =?us-ascii?Q?HI1AAJozyIrRhLWSEi6h+FAxif5vtodOyr/U1I+etYwQfOekv8pCs6nM5JOr?=
 =?us-ascii?Q?tQrTsTggYO58rOS4r+DomWrpzbGRkYufZpfnk7s5IHS8LY9DKKueRc4CYbsb?=
 =?us-ascii?Q?KQlN9v6GNs2DpgxIurgz+NSZ65pwY2R0Gfzg30wrCQMoat1SMBvrNIRsQFtl?=
 =?us-ascii?Q?13aJi7io+WOmHWtRvkHBflDv0K6cU3rPfxOi3Mu0VBGyPshdntLCR8Cyyd7y?=
 =?us-ascii?Q?eg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aaaf96a-54ff-4b9a-cda9-08da9d512011
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 10:48:18.1983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1Svy8zdHuIbcaoc+TppWeb71Pu+2w+kIqgbX9rM+CN9vwIAAqXLvzWIJ7d5H8/dqalIrBsyD0iKrzKBgsjMhmjz9JpVAvAhMnZbP6hCnMuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6447
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930116; x=1695466116;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nPg0pYeXUgnLa8e5ZbmOL91urZGpeP1TRAgZb+SQYII=;
 b=hCJnIj1kFtac64rWjS/coCU6exxMz+7UGADpEQvgJq6p+K1KJuJ03tq6
 dQLkizWaYw8pAN7FdK0My+D8i55ec7jtEna9le3x3k0DEc8W45fhd9YoO
 oct01QWG5k2n7b2I4U9dCo64m27GavjMyJa+4cwddqBE2CR1YLpAkHCIp
 fpkHCg5BNHAU0mqDIiBzM0bxlhrbG0v4AjT9LwiUFrtloryTdMNAEGbO7
 Sb2GmzsjCgGlbs1xvUcVbytsDHo7BRsMSn4Z5sqCumg2rqH3U/kXfTFfB
 APIzEc2hqr/aWzfwhcBCEMtO2hRaN0E2TwvdyT71l6fVVh4Uq6fC6FcnQ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hCJnIj1k
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for VLAN
 priority filters in switchdev
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
> Martyna Szapar-Mudlaw
> Sent: Thursday, September 15, 2022 5:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Add support for VLAN priority
> filters in switchdev
> 
> Enable support for adding TC rules that filter on the VLAN priority in
> switchdev mode.
> 
> VLAN priority are the first 3 bits of 16b switch field vector word which contain
> also vlan id value within its last 12 bits.
> When getting vlan priority value from tc match.key it has to be shifted first to
> proper bits positions (by VLAN_PRIO_SHIFT) and then can be added to the
> joint 'vlan' field in ice_vlan_hdr in lookup element.
> 
> The mask of lookup changes accordingly.
> 0x0FFF - when only vlan id is added in filter
> 0xE000 - when only vlan priority is added in filter 0xEFFF - when both these
> values are specified
> 
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-
> mudlaw@linux.intel.com>
> 
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 73 ++++++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |  4 +-
>  2 files changed, 60 insertions(+), 17 deletions(-)
> 

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
