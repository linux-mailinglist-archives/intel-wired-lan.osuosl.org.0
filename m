Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6FC4A0430
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jan 2022 00:21:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A55D60D8E;
	Fri, 28 Jan 2022 23:21:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0l2XYxLtJoAZ; Fri, 28 Jan 2022 23:21:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 701B160D65;
	Fri, 28 Jan 2022 23:21:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE97F1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 23:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB865415FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 23:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R6B8j0qE0jJp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jan 2022 23:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C107F4047D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jan 2022 23:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643412109; x=1674948109;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o0tYDjIJy+uT9t+aEAsnTFvQrpz654ucDfcQRIpzQ5o=;
 b=MFZAj/dWj/POhf0dchXU/i98Su0k7KEY8otOgNEIkVM6Bteb0PbQrx01
 kYHmpQn6Qi3MMAlvuyNTc0KnF7+BXuxc5Qb69Gyj5k6qJmGngCd/czDiu
 2uvReB56gWvLS0hjOm72StGSdonsR5q6ChlpJtvjD/qc4saByPdYnYx4M
 KA2bjSgofJ+0cJ/fwXSJJNoBLUrRsfm2Esw6BbQNGa7ojAMgMEPSyVIhh
 YUzgwPn/eJbdOtis/qT4XT+rEbZpt7Y5cLVzS9PuogvmfjOuMTHLh0/n5
 HKpAmcpN6wfncc9ZANDsbwSd8KfIqbPz9KCmtG3SWqsOKe1eO3yVY6QFH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247436283"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247436283"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 15:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="675226735"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2022 15:21:48 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 15:21:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 15:21:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 15:21:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VVZvKZQvcbzdliMpTHgMD6W/ziW9B4Jxqo1Caca47OZKvBogJMErIsQrBA280R5sa6NWjh9idmn72q0SzgX+lkytH+j33eeOVvCTQUR5bpaMg0i02tOwU9jKpIIFMnHyEAKREZ5hOZMifm/0vZcT4OKyDN/Uywhp6k8Rc6ZH2Zs0pFiH7UEJlj2vCnaO0tfwWnCneuoE/l57j/A6x8mB/e8JgwDhi4ukihG+hHQC2q2eHvfoK2wBmyGHcvc/FYSVXSbmCsMGH19anZuSf8v/uwVVbpVMc6YXv/AnJJ/3UhzQXTzRsJlWMkowSBepPS+QK1NF5cFzqAAtuVFLhTdxGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pUG1uw2wiNQzKTw9ZpxVWMsbGLtmL1myy+VepYhep+w=;
 b=NgxdFBC/4QEaFe6wfyQXsJXhzyZboWUKbh17mMeohuBHDkg4OcPsuw2CVUTndahdGgab0LnJ+jGa8XnWz3B2vsAEM6qPmrXiiou4SsjG/XBzj8Q/EgELovihda8uFjYq5fCasJ4JKO5rT/CnfqVUxNbwAYvENbPucpeHRx+wJY7pKDRRTFn6nhsC/4bHjaAdZUhVx5rs37p+00+LsA8UAVIw6sBcmugfvItm+F2dadFHEzUcL0dI7bHRvdEOoncju4oWOEBqmU4JPzhjgnXwWbh+gukGPt7nMKB7uKWjpkwa59VSiXw7EUsEpxwTn9t29ZrgMwZrG0ooTaVfdMeoFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by BN6PR11MB1265.namprd11.prod.outlook.com (2603:10b6:404:48::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Fri, 28 Jan
 2022 23:21:46 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::6071:6229:18b0:a2d0]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::6071:6229:18b0:a2d0%5]) with mapi id 15.20.4930.018; Fri, 28 Jan 2022
 23:21:46 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 intel-next] ice: add TTY for GNSS
 module for E810T device
Thread-Index: AQHX8OYiWVPpy4WBMEyCAwO4OIP8Gax5WJYw
Date: Fri, 28 Jan 2022 23:21:46 +0000
Message-ID: <CO1PR11MB5028AE8200944E2A94879214A0229@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20211214122759.450794-1-karol.kolacinski@intel.com>
In-Reply-To: <20211214122759.450794-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b410f356-ce7e-422c-1a9d-08d9e2b4f3fb
x-ms-traffictypediagnostic: BN6PR11MB1265:EE_
x-microsoft-antispam-prvs: <BN6PR11MB126563D68B1E610817EC3FF6A0229@BN6PR11MB1265.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4+zAuyiOlSigVQ+dpDM0gbFU9nnDAcRHFUhgvzIJJ0qcs+5L4895taiWuHWjAvpASwgXZa0+j5G3crI29QgSAYZsXjQxrbubHOqAtpiS68Ok/s984wVQrrawqg1Tgejz1hhx8/+vyLnZH1Yclv3czkqs3RiaDf1yOHe0LN2Rp22m10SJXMXhzNvkh4A01tArCpUJrk9rjyrH0FwkHdbdxmV1FwmydxLdF8NlSAMCu63DwaTVm8Nbrue+S+DlLoPOUCgaE5aR2fjb+qoH93iuuDONPlxC8hNaQMccSgY25BxMVorXxKRviqLjY0/eF/JS5Wmi68H0EMlj1JId6mUFNAcHHvfQGxklwfrhCf80/EWzxxcLOnPX83hYpS9d30U38v/74RQysUKS8/SDMZPJQ6rn2rKe1X7scwU61Au56z3fX1jaRfa0C8EupLBaiGT5JVBKmmMc6BH5a+qe0LdxUpUa25Srav4H96hvxCNPxmyolsAX9auRp6Y/jG+Kt31AFS7LGIe/tgPHYXDjbUVzVXfHi1Ajrr0Me9JfGqm2HjKKuy42NjTgonvehD5An6xVKpvr9MZ3QX4TIf/mNYlumuvjQ/CFdwddzs81Iey1dYK9EzORizYhAxmmJjFCkGULrES0c9jo1jigGvk9XcN1rfkaqP8igWx325PO71jmPhM9c0kQg6mOEInCHChxm+7OivkXhLxlcsl+EHkwTIBtMQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(52536014)(66556008)(66476007)(66946007)(107886003)(7696005)(6506007)(9686003)(38070700005)(76116006)(71200400001)(4326008)(66446008)(8676002)(64756008)(8936002)(53546011)(33656002)(110136005)(54906003)(26005)(5660300002)(508600001)(316002)(38100700002)(82960400001)(122000001)(55016003)(86362001)(2906002)(186003)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CUhLjF+yxYw5JnXT1g8bMMSoBUHPaikUqvmD1gcWLaXcX0gIcShN5AzsLFi7?=
 =?us-ascii?Q?Snnrako5O2iS9Mr/D9ZKGYUy92zbCMP2cyOsYKiEKtngnxO40i2rXfVREWc6?=
 =?us-ascii?Q?o15nctW80mxyA441phebUH4kkZW0AKXo+cM0EqVzd0F6yDUc+QCtAvRm8y2S?=
 =?us-ascii?Q?W0ZTjVK0krV3HvWAE6XoT3Gk9c8hoscjpyDMpx05/SCgyh6kwykR2Cg4XPq+?=
 =?us-ascii?Q?XHF8y7m45jf8oOEAPpBoh524mRE0e8+IkRU1N1afLcEHGutmTf6CH6QWcuNe?=
 =?us-ascii?Q?MjmAMTAbN7Yeq+SOa+t3cTZz4qfQu4aUEOIoDXM2tpykYZTmMTi5acoIxQu9?=
 =?us-ascii?Q?AeWbU/WY3BOFyjsso9O86GGKv4W1ftTsPn5WuC8XJYBroxqnPBnSzg9OkBML?=
 =?us-ascii?Q?O3VsSlRiaMXzQE6kocpi1szrGeFHWEIkBdQyd0p30Log6BbcapEQij+XlBRD?=
 =?us-ascii?Q?wgnXMUGJ8UEzztfWSb6X+yZunRgFSu7dPFh3sSOIxesYyhuCt7iiaPqiIT62?=
 =?us-ascii?Q?c+tWdXVinnm/yb5fBgFzSGpFU1yhFR+oDzpF8S4jRuvBJfaX1iGyX+QPjDg6?=
 =?us-ascii?Q?XSKe7dLL8ReLzea1nFd01BX9IxG6Pu8TjMEkeDWc8dhRWGqBIwZYu887oY/M?=
 =?us-ascii?Q?bWcDOMmlovC7uWsxnecrojtF0VNX16i+3+/ruBWlRLNod3XjsEWiydOtU8be?=
 =?us-ascii?Q?cPXq4O5ytOAWCTQZh1Hi6m4l/Y++bPJkKuh8LpYVmoqKFij6aMNG0eZlZh/k?=
 =?us-ascii?Q?A4TiH4I32k/u7neWbrnsFPu4qW4FDQmRhcH+mvtX9wMBHgEuYEPWbsMreFKU?=
 =?us-ascii?Q?6oyzxy+TvAyPyb9/6GYuQKQI3ZHl18KEIjTatcKqc1lpPyE9HwqICl65x10s?=
 =?us-ascii?Q?tkpoKGei+hO3PQN6Ttn0cHQfpmzaPEdHQr+PwJhfP3+NLTVj3tvbIv/Ve+7m?=
 =?us-ascii?Q?jej9Qc9RSnoqQpi0bgi3n16u7GhAW5atvIGI6FuAXP0/v2ylD1M2ZXSlw9z5?=
 =?us-ascii?Q?S4RZcndkkaZ0IJ3nXTSux2rm0zVuyJ8RmO96/6BB4XdgoKv9WfKvgBBKm2Nr?=
 =?us-ascii?Q?UMfYh2/vpjeu0wzJ1WOuZwJqnUpGBYvQz8ARPkv2XJ38ovvTxN941rO6lxZj?=
 =?us-ascii?Q?lFd/ZCU+KhV8Ogx89c42fxxZ6NlglUBi35eQTbOc4JQ8/3dwMlHaxGJr6pqV?=
 =?us-ascii?Q?sWMe2iSY8b/+e6+T5AOdCE7Zy3AOhs9J1Yyn/L13AUUWgHahD0bEHW2XkS/R?=
 =?us-ascii?Q?/zq3eCNRx9x9j4xCzvY3QGcg0ncLGFl99T3VhluzTv+/TGM1TP7sGpijjF9Z?=
 =?us-ascii?Q?OiHMD8QU6L8ul6zC/x3kKtn8xnxi4plhkbURYPKTwV4lnAHEW3mQ24i/dSo6?=
 =?us-ascii?Q?lKwPB12b0dl7DWfm6V7Sr27vPingNOxANH4wSb5x9UxRjcAPr8hyQhWZ8EWa?=
 =?us-ascii?Q?ZkTvh8L8nnaf7A9b6k4ZUGl1aZDtM5mD+AeDwsmUqeRLytNeAZoUOJzBIwh2?=
 =?us-ascii?Q?ZPfhU+zi8PN66nTF5EiRP9CO3TV5KxLAbPOCUz1u8AaO/Ft5vbj3rqxsIluT?=
 =?us-ascii?Q?u7ObIWGjAqAGQFmy1UyC/95OayydB5RnxYXmrPAeDngrSwyACcWu9CiLppzA?=
 =?us-ascii?Q?8TM7lxXk3BTdmO2msDp7dIytHEIZZJCmB+YtkQFmycP3kMm/wQqyuAcU21HH?=
 =?us-ascii?Q?ai9tMg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b410f356-ce7e-422c-1a9d-08d9e2b4f3fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2022 23:21:46.4165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uY//0nfSV+ewyea5ruPipOJQ+CVg8JUGZqSFOIvCrhylBN45m+UAqiAy2/dLAtIOMwkkfEcguu5RwvMWdG9TGyZzG1yD9HYGBYt+DTkXl1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1265
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 intel-next] ice: add TTY for GNSS
 module for E810T device
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
Cc: "Mishra, Sudhansu Sekhar" <sudhansu.mishra@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karol Kolacinski
> Sent: Tuesday, December 14, 2021 4:28 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mishra, Sudhansu Sekhar <sudhansu.mishra@intel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 intel-next] ice: add TTY for GNSS module for E810T device
>
> Add a new ice_gnss.c file for holding the basic GNSS module functions.
> If the device supports GNSS module, call the new ice_gnss_init and ice_gnss_release functions where appropriate. 
>
> Implement basic functionality for reading the data from GNSS module using TTY device.
>
> Add I2C read AQ command. It is now required for controlling the external physical connectors via external I2C port expander on E810-T adapters.
>
> Future changes will introduce write functionality.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Sudhansu Sekhar Mishra <sudhansu.mishra@intel.com>
> ---
> V1 -> V2: Added CONFIG_TTY dependency
> V2 -> V3: Removed unnecessary & on pf->hw pointer check
> V3 -> V4: Removed pf->hw pointer check
>
> drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  drivers/net/ethernet/intel/ice/ice.h          |   6 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  21 +
> drivers/net/ethernet/intel/ice/ice_common.c   |  53 +++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 376 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  51 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   5 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  11 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  31 ++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   7 +
>  11 files changed, 564 insertions(+), 1 deletion(-)  create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_gnss.h
>
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
