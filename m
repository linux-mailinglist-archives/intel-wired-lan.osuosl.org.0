Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B437C82B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Oct 2023 12:02:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 208C6614FF;
	Fri, 13 Oct 2023 10:02:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 208C6614FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697191374;
	bh=K9GUmLfeGyXwn7cnZG8CgpXaMy18rFnksF7BySYrXT0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DFj6HxeGtNcG9xjR2N0Q2t8VbCqIRIjmQQAuwgZcVatrZRSPwpPFtlEPH9+ulRcwl
	 SlZag3WdgcAYdozzYyPn0rRDr4WLtT/ZSXeTRyfwxL2V2IAXARbGXEZBdwYZjbkq5X
	 W0bvkfapK5nOmaUHsr4ke7T+dt378gw3/FRMbtUI6Lk4vMf2KZstbQihoPYpj25AI3
	 a6VSl3nBYvSjhmiGf5rrosvdtByWnOttr0aoyOYnvm25l8+yhiYbJGvQ5KtuMSwqZZ
	 WzvwRPvbRvsZv3WgOTjugLrtg/uTeT+ClvqVzB974Ef3oXjtaYn4zDC3A9hRhvGno8
	 24n4VcJ5wcSvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uU36Ixhc_IS8; Fri, 13 Oct 2023 10:02:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECFCD6060A;
	Fri, 13 Oct 2023 10:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECFCD6060A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9113C1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69103605B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:02:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69103605B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HkRGAzM0_Bkv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Oct 2023 10:02:46 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 00FA560597
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Oct 2023 10:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00FA560597
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="389012712"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="389012712"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:01:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="825003609"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="825003609"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 03:01:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 03:01:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 03:01:27 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 03:01:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmsUXvUy4BnJ01AHp3MWs0cbATGzhfPSdmsLDQxgc3h+mgjPQpdqu4Um8EOqUXDHKllYPZuvLR1Zo9h1qtdfsU4KyI+hnBrKjU2JhZWxBOTJye/BRf4TthPx76XGiXanZ+CPjQxg1cfbMAgf3MyAPOgKBBCk+vlavhKY6F5j2QFy6J/74qVxqtM9aJvTyQsQCoaVXz3t0krb/I9+/lFiO2sS0GKmHJkjlx4oW+G4F46LfhM2gnnBRwmPha3cp1Gs3mkytPo71n41egCCeps2eWE9vMnX0fdPTHTKVrJbWbE7IRrc3OL3uK/WuxJCVf9YadLurghbSekw4XLhcCqjsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IMBzD0KW1T4zduQtOoY8eKF9PAn2HrJVy5m3sEbpKzc=;
 b=OhmHPMYSyTQhhKdnHo+uinQxHNYt+hIc2l3RBCD6XBiJ9mxVElDZaYZGmylamXz/HLn2WkNDeO3LvTtMQDs+2pmLOPMwibLnw8BKkbRd8+oMn4dnO6YzK0DWNz+qMORbiD2HT7cDUzXyyA949SPlxnO05xKiw90fbMmQGwKrlTZlg5runhKVPUwBg4AljWDuJUpL+ZQNQKPvrIGc7CEBvnovIL5fc7VxQx8LO57d7cq7AnJzSocQGrCSKxLfYY57uTDC2FCskGkuCAi0wUvUFVcLpkBwktMoYquNh3jpypsz/4NOeKDMNwFLXyjlk3gXRnevSGp7kH1FTIC/v1SFqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Fri, 13 Oct
 2023 10:01:05 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631%5]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 10:01:04 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix potential memory
 leak in igb_add_ethtool_nfc_entry
Thread-Index: AQHZ9q4wbIQjMESbEki8gLfHDZyQlLBHZ/vw
Date: Fri, 13 Oct 2023 10:01:04 +0000
Message-ID: <BN9PR11MB53547BF14EDCF1A8B3F4261B80D2A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20231004102500.1063799-1-mateusz.palczewski@intel.com>
In-Reply-To: <20231004102500.1063799-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW3PR11MB4762:EE_
x-ms-office365-filtering-correlation-id: 41a5b8c2-11d6-43ac-53c6-08dbcbd35058
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5rsPUnk7s77Ncj0a7/jps+KWoZ5MwSzt9g0RVgdK/I3aISh4wE7bc9H6yOcev3i1FvIazKCx0Ec6JBBE+eCZD2hDztEiiXJtdMhYkYa8YQnmgvTcBHGqddtuZryztNajjRk+C9tG4HmqC7Xf4qsyd1VwAqD9NIF/8B3DtCFBtzRU3e+IByERRZcrM9ZA7QnID6Zbcq+QAl8CFSqsWhPapuZfcEOrwrrUUQVlE0cxfc3MfzNQ0x1aSIlXWpPZczVF9Wu+Y0NiLJGOKjLhJ/I5lyq4bM6TfJvtE4eOsvbJ0sKRweM7VixJO48sppRvykk5G4CY//pISky734l2Y70c2l8Ri0ICQhwOmru8c9ENL/N4F78fqYM7jHcVUDJUzvvEv35ysOvslBkj4mWKIY8UZMVjUGJD1vned6CBudsgRhoYc/AyqPIK+ab5pUFATK5P8VkdjhH/1X5Dt21XM6NqAGAUkSWYKrD5sp3UkmVo4wbAWavM6ZUTvbL1vvpkLigIAw2KE9lkXOjylhZcA0kug664mcgag4pusa6LAi/rBkivVt/+ysky9zcKbxp7Fb4L2266IPiU145pygVbpt3K0XrQdVvw0KdQkBCZNTW2nRM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(396003)(136003)(39860400002)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7696005)(6506007)(53546011)(83380400001)(26005)(107886003)(55016003)(38070700005)(38100700002)(122000001)(4326008)(9686003)(33656002)(4744005)(2906002)(86362001)(5660300002)(52536014)(8936002)(71200400001)(8676002)(110136005)(316002)(66476007)(76116006)(66446008)(66556008)(54906003)(66946007)(64756008)(41300700001)(82960400001)(966005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RIW7KSfkrE3+o8sUVobloMrm95IvoLZOSftI3a5VMv6UWf5zcLzm5f7HT9rL?=
 =?us-ascii?Q?RZtRApc3/IGxkcMAY1+JsN5O72LwOoRSd027MvHJESH23pd2g4WrZcLBEEPk?=
 =?us-ascii?Q?vVs7qeDbBnEZzq1VRnvk/FOZqJhfJDMrmg8jX3iu9iRuW3CZcG98eY8mY6L5?=
 =?us-ascii?Q?NvqoAVlJsI6Dr6rSUf8TtoRhEctRzWHBi5YRx8uxArt88DVjZxocusoi56FH?=
 =?us-ascii?Q?GpTvV2m9YtepTSoFs0AMCzzHFd73jhAzkO6tjMR3ErB1IMB7XQ4hAeQso/Kg?=
 =?us-ascii?Q?xaECf9RLV4QYCJdEtvZP94WBYs0seAh7eM3Z/6EX0ha2i7DmO39nw5o16J9k?=
 =?us-ascii?Q?BZkUZBnZfs5ScAEmmaTn48tx76HwRA1Ihsn2dNM1vnEf+uInsdUqXW52HwXf?=
 =?us-ascii?Q?5yCk/rVEb4YYJTwu4rxBmpOrT3yk6fa71PfcWH2M9r1KqdDNjs+CxcQDkfrB?=
 =?us-ascii?Q?Mf7w5TnHvZ56azLSeJR5STn0esGcYsD/p/8BHWXZZTXBN6zXGJjMyw21KmRD?=
 =?us-ascii?Q?EJ1jmIp+J47sBYy6EsIr+yFujy3WmrZ27F/WOkd/lcw+H5mrzMnowTTyl2QD?=
 =?us-ascii?Q?5yoinWc6p8KpKA0VvrmTv1CJfh79HSXDxZyrAbXzjyn/xJJWcjkeX2qmPtN6?=
 =?us-ascii?Q?P8KagmjpZ9DUSeTXxS6zrhjVyvi6/5eYpVMZk3TNz47skcKa5TjcgD0f/6A8?=
 =?us-ascii?Q?0GPehi2+jNj9DlRodlIQ9MZS19Wz1U+y0CjjModrQTOf0JVUQ0jBWg1Rj1Tq?=
 =?us-ascii?Q?F1buqqpGsYCz/j+W5rWpfwKq4mRMJ1z2RaYzhnKleduJXLj+U49Wxns+n2Zf?=
 =?us-ascii?Q?Fnp18dvZK07RI0T/CXg/FDlz5X0J6ZmM6Du7k4WuT85fNwmeLnmYVtdnZcWW?=
 =?us-ascii?Q?IekMhSUpM22rDUC4v50YldzF9onZH1Sfhq/MmRbXGqT7TpTb95UD7vKTxfXs?=
 =?us-ascii?Q?S9PxT7OIq+iW/dmHHMuETtUYwuvhK/7aQJf1+WfJ+30H32rArlp/EFXW+mfn?=
 =?us-ascii?Q?DzN6JStbCh14p/4c4GLt19KTYab8LVXp/Qrx0muCojCykVTgSXYZO1234sxR?=
 =?us-ascii?Q?AhcGDY5vLZ5Xt+AJidcoEruLHywrhb6kFV0d6FRruZRZxKXD5PPgeNrPEzTt?=
 =?us-ascii?Q?J/t+8UDCQIFAg6DEnQCYGmUNQn+YkplBoCrW4wEzK8EuswnWpt6jUpm0A/ie?=
 =?us-ascii?Q?hqNhPeAMlXPcGoZPTbvVzfVYou8ZS0foRUxg85uaop3kl7C4AWTgA00b/+gE?=
 =?us-ascii?Q?6AzVsyEuAq+r2N2yNnW4XUViLhP6p6N/8rvNACBqE2q/dnu6cUyoYJTU4+6W?=
 =?us-ascii?Q?mg4qzUgQI2x/GrMDfVp8pkzfxcmUlPcUM8ALoHjsV+Mfn+BoquFj/aKypXYi?=
 =?us-ascii?Q?4wEz7P8xSibrvROHWsdkdTf3ihUy6wgk+ETHNVq2oN4z6ywijFxL18PhLIqq?=
 =?us-ascii?Q?MzAUkt6U1pHoF4M3QkHK83t8VAcAbatXE+3at/QAs/KYaN29jjdSJjgtWDSd?=
 =?us-ascii?Q?fu8qkf6thVzh8bwkuq9V2O6Izaf8EskYytNbm4roNlP9K8lFpJnDWdJdklha?=
 =?us-ascii?Q?Lh0PGYCUkq0LzUGCjMkZu0BngENjuOGH0HXJLqNP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a5b8c2-11d6-43ac-53c6-08dbcbd35058
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 10:01:04.9397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MgS7NfljqkkBHYQXj8Evkf5RFQGUY1wklX+ff73ZTRDWr1hhm0deiJU75Slp/zwMH7I9ZcD6+UMEZpC/0LXa9rylSuepGrglE81QXZZXRBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697191365; x=1728727365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+T/fEP4fovJ8iKrLM4YN/eGlbSI8nJvkuBV9kbuk63s=;
 b=Vs0f1fuiVpRPc+zho8khH5V2KAoCdJXeyVS6ohgGtqdtJYw7jUhLYQ/n
 lZPXtjcrP54FssJuFS0DnK2aqP9K9yEh/oQXoWjrISla85SwwBA2I4k3v
 soX9iMdYZSvNDfpU5LhyAg2vX/J5LoUlJJZuTOsUlo0bH10mBWAzURpKV
 sjSTLplIKw3DNEsX9z9hLjsKLSd/pJPdN6YuAY+GQTXuyNGlBvpk+i67g
 XOHcheHmqE4M1AExzfs5sBN/RMEfc/+Qwp8noPjPPiebG3pnUCY5+ool7
 iWXH6zWWz+Rj8JnP4c8wpSMBuubDDkUznjC3+wgC7T0vIN7tmlTpIaCF2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vs0f1fui
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix potential memory
 leak in igb_add_ethtool_nfc_entry
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mateusz Palczewski
> Sent: Wednesday, October 4, 2023 3:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix potential memory leak in igb_add_ethtool_nfc_entry
>
> Add check for return of igb_update_ethtool_nfc_entry so that in case of any potential errors the memory alocated for input will be freed.
>
> Fixes: 0e71def25281 ("igb: add support of RX network flow classification")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
