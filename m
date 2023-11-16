Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B15FC7EDCA8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Nov 2023 09:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D2E54220D;
	Thu, 16 Nov 2023 08:12:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D2E54220D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700122333;
	bh=0hcNRusqfyf59RmLPGjxE7vmf4FhWUcKCuKe+ItPRv4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tgzrz/XHpZWMdVyThgOly8O/8Gk49N31tESDDFx3xdRoBWdtJkVjjThHipDYKaNN+
	 HxUDsr6a2fYwM1eUhKCmEWmZMCYsVPrc4F2nTF9qViFUcRWsyRed9VdIG7eaDC5UnP
	 l0kefl/SGzHUKHzeJuPcOTtm/4jOhb99nZox3K7t+P/+JjxZSoBOpLCM5ZkfRU2WWJ
	 0VSPE9kI59ppAcNz2T0U3E4NYI0Of/vZWwAn6xH7jROmUGyGmuOiBapK/OskvKBv4N
	 C6qV25ykM6jtoMkOKhn6HphDwlNbUsn8uXtoT+n/aevDWL69/ozn3BHvBLRkEwWhBj
	 t2ShAgCoWs5+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id apKccejIYFXJ; Thu, 16 Nov 2023 08:12:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F72E420A2;
	Thu, 16 Nov 2023 08:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F72E420A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 746671BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5957182F13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5957182F13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYJZb17wnHU9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Nov 2023 08:12:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB19082C7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Nov 2023 08:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB19082C7C
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422131765"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="422131765"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 00:12:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="13035851"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 00:12:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:12:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:12:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:12:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9UPmTNjZMItoQ3jqYMs3Xi1/KCxycYgan/PwdE+q8H1wQsiSGyiTG2Yp02Izl6w7j12osH4QtQSyfH9f59NMqgug4GAstvDesO/XdzRy0qpfrkWuZzsd7Y4c06G1rIw1y4kTEit/lmMMNfNs29v0JKzgPeoVwuWog/4m3QpFW1boj7Dwtf20UeyemFyBgwKHUtQokizM4LpIiOxPvR2xED1n94muQvOxF6HwzccF6shPffp0f3O5J96wpe8sf9LtXrganofAM+fqSBRAAllhvsDU+HX7aMQJSjGYWhbW5AfgfDAF2sgYLQkyCYGIvAtmVKemSRaG/uLVi1I9gcG4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKID+Ne9HtZTRtmPP3pa5DfBVqWFlGwtcNYN19sCNAs=;
 b=oUR30C/cOHqYl7Psesjg6LD2Q8jBWPBSkD3/ELkjSbRu7NEgEkDHyJg+XquomDO/YSUzWSbvmnEXA3wuoPb1P1sOghoDLFZRSi05WPYq+0fYUila5OaoVcrHZnlbd6jMfSHAtLbUszH7EnFxVGpQRJL6Tfi6hlmnTVzqgH1CwTeHHBr9IkKQly69QL3TQo+cj7Q98eeG3LbRMjLrgBB2lj8PvKj/U3Go4MvzfataWULDKtWF1qNXQR9uAd633c2SVw1RwF45BoLKRxY8yec2yBL7Fa6zbTH562AmNcLNOcmm52gw5MqlSVd9d/Fw7kHwNA+eF6Ns4PB105QcK+1Z0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA0PR11MB4589.namprd11.prod.outlook.com (2603:10b6:806:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 08:12:01 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2%5]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 08:12:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: restore timestamp
 configuration after device reset
Thread-Index: AQHaDrAefVexuPjjS0G3qhRwXPmrRLB8p7Cw
Date: Thu, 16 Nov 2023 08:12:01 +0000
Message-ID: <BL0PR11MB31222091F258C9FFEE783CA1BDB0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231103234658.511859-1-jacob.e.keller@intel.com>
 <20231103234658.511859-4-jacob.e.keller@intel.com>
In-Reply-To: <20231103234658.511859-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA0PR11MB4589:EE_
x-ms-office365-filtering-correlation-id: b07d687b-f2ea-4c06-2426-08dbe67bb5f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l2Xe6gZBJ+NZXmiofbflIDrYEqBGkJT4pTsvBYpdLIYOnUBG1D6YkqT2chxrvlMQZWF9Zqf9+NvkvoAcCL2IkwPmcOKulHzH8Wjl3xBAtcnagS3+CBJla/YxVKcQz4S1q96P/y2n+gvzwliZnwhG5BphsgEGRizVdNT+nH+inYUzSpUxBJe07APjWh5iitME01C5evDypUfN1aTO2nJMhD87vG3vBiJddzW30PgmFSXzdeaeQfCdSs6n2+1BWCro/hbXNjAUXBAOGVWahyrEv0d0EPPsR/sq6mgRsoeAn7lShF6UEjL4AoxlbeSVullNLcCSgLu5fEjg9JXkqpAg+Cyp88t0DoFy4TB25fLjFokYY1UtVat7m16JxJn611+sO70MxIdI61o9w4gMRHO9l/HDnOu6qiE6ijK7dksMuE0cryUmVrWuz1rGbdsR84CM494Wlk5b0Jo/sHDiOwabqAZbqPx/+kYhjNFXxo5fsXW4wINzuxosmhguYAMZ9YMZHSb6lwKShqprzsRprwUbsUxoq/5oEXs7y3PJv7oPKX/QQFyBw9S2+7KkWVss0iTOlVRjfyfEM8yX94yg1QG+Vl9jYwnKG6ZmvVqvNzpNrENmQvJ7q+kyNPWGISTMlvvb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(71200400001)(76116006)(52536014)(4326008)(110136005)(9686003)(54906003)(64756008)(6636002)(316002)(66946007)(6506007)(7696005)(53546011)(66476007)(66446008)(66556008)(8936002)(8676002)(478600001)(38070700009)(2906002)(55016003)(33656002)(38100700002)(41300700001)(26005)(122000001)(107886003)(83380400001)(86362001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fcHYJEVohPARuutNEHcBmUVdF9j3QKLoE/7TrXzr6fukHSWcYJ3wpnu/ucCZ?=
 =?us-ascii?Q?m1ojJFwMphX7DJhuz3c/HbXtSRSXFIpUcM+GNn4ZGqtdQlcLHealupIthcgA?=
 =?us-ascii?Q?JmRyapu0BRhq6AVWO1rdmYQWpZLUFprDlB3jx27VjzqpE/kvnQlJt/Shl6Ee?=
 =?us-ascii?Q?PBveLiGmCgsoVLSgpi0iDuVIsp1qiISikXkQEa2J5V+JRr9rE92qP3UlKem7?=
 =?us-ascii?Q?hGjn9L+GIy39Aj8ndDP8O/aGgc0/BV07yPw2VNHjBc7C1/+BUybs0mHFE89i?=
 =?us-ascii?Q?WlAgJOfd0mb+RnnGlMZgnCnlORtijzGE14Fpvg+4laDIT7twom6zoSbi0ai3?=
 =?us-ascii?Q?H/VYlHQ55J9bGCuZbxUAD/IRGd3tcUnATloFhuWoX9yRhbnxAVzvKnP3MOXl?=
 =?us-ascii?Q?Nt+4cRpJTtB0v6LCizLK0RCr3ecdk8QsTUtDLk1dVU+9InUqcCWmmlA90HQm?=
 =?us-ascii?Q?ud3YjZGdLJKO1q2IJSrhLkshcBmvFCD2bAuAT0ffvhBLUBnq8hQu7Ai+Zn8y?=
 =?us-ascii?Q?5I2VFgaiyyMzFYZq/xgQ+vZF2rnbyeMprqnbGz03+1OAruniTJvaJTYdrmB9?=
 =?us-ascii?Q?gvhXiVU5Sk76WY1ZAX+2Fcw0j6tY7M6L2TfKB4CZtRZ46CPWEBT22/vSRHSf?=
 =?us-ascii?Q?HIqgcJ+V25w6m2mRfTRfLsB01i+/GHP9bT/+eQf+sP/FVs44f90q18TRtl4I?=
 =?us-ascii?Q?o35LEbxYqY5YBz5Lu7p3MvujkMglJojc7N2rD35o8Ss51/wZkYY5p3kSL5G8?=
 =?us-ascii?Q?gY4XlHX6rNTf9gGT462WQcKiw8omzBVFkvvzxZd19G3BftCFsy1IjRDaVSn2?=
 =?us-ascii?Q?VTHS+jMb9B+TiUJEaf3gWrbpZ6xEO0fbPXVLfw0z7jUK4L+wnFgHXhOvKFiN?=
 =?us-ascii?Q?b+gEUqerdaLr0ShbBdDGn7AqkY7Pc8kI1I6qw/fnahRfJMqjRSgZj+SpAIqd?=
 =?us-ascii?Q?vh0QOoNclA3B+4fHmMCCR5cHzgZe280LTAzaTRPzfcWDom6or0t+XgwGiDns?=
 =?us-ascii?Q?f/p+Hw3zgsZ/S4kGYnu0iNXwztDKwjjctDFjeJxo1HxwQ6M+95L1EmAEIYlQ?=
 =?us-ascii?Q?GidRrOK3XO0tHR++Uj0Qs6O7qx7IroCUwQvcsiRWTPF7HD0z+qx71bEQgqo7?=
 =?us-ascii?Q?QHpfr5zBoXsiTnfxie3qwNcXVcMyXzvFzo23XjdzTvZR+cliDQ18opw3TiZl?=
 =?us-ascii?Q?BHe5E5BpcEKGWGr6T+g2N1bdJFmFQTeiN0biq9weLPFms7m36ejwTYWkyY2K?=
 =?us-ascii?Q?Qik6oCDnSp8JzzmE0zKwqXh4cEIlVMQSOO6cpsA2DdBufivTSTd2NM8CYf0R?=
 =?us-ascii?Q?ATt3OS+/XGlDR50G6+pNV12XqvvSMLagiNfatRbp/D6kj76jfq3vSWVF3XKd?=
 =?us-ascii?Q?HeNpiJmQ2sRme1XDdOPfveGR+5MqO2TwGIiNK2CidXZkErNuC2DzgNh2VChB?=
 =?us-ascii?Q?QbsYhtPdoP5secHP+uJkmLoDW8CrU9sd8FUUnp5YSH2k+XiG37PxT1wd+ST0?=
 =?us-ascii?Q?eOyc+u8FDZ2CEt27QzveL+q6mSZkhxRYtrbKwA3Bb5n8B2sHaSh3Ys1fh76X?=
 =?us-ascii?Q?mHyF9UglvA9ONavte+Pt+Pn92IXqiLq51hHyVR+0XaJpnfe3CbycaI7c5WZ1?=
 =?us-ascii?Q?Yg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b07d687b-f2ea-4c06-2426-08dbe67bb5f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:12:01.0572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qfaPE58xk7+HLBHlhJeMBPlb4PrxfqUB6BgpnugXilOi6wDEBQ5Z0b7nrzG8sHyF/pExddJ4fTfD6mFqzDDBdkd+WSTQrKVtW6MJL9l7RhnosWa/wnA3DK5M/Is30oeQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4589
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700122325; x=1731658325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pkH3rvDY48sF9d1rVVOfNo4PyCfIZNyNsUAUgZD6pOs=;
 b=esWU1LvWZiF1NqjOw+vFoamT/0ncQ74C6m4XgtWDmymSNJ4GkVvr6iGe
 XQiqn1V8/ZKkq3z/ce3Vttm9fXIlixSVpwb37ZWEO/5WZaXqHVq8YpgrK
 gGjb0ELGYg6eN5N4VYyfnn6poPD/G+dPmXBWm2G/Tj785YOTSy40zn8O0
 1RaMO8fL9Nc4C7cdVZObFuHnDjY5Kj9gxS+AYfGgZb7m9p9G6Vcw00Vfw
 oY8M5Ng8RYE3a+btujQagS8myLDSyyStoLMz+YnEUugiogue9pokD2GSk
 ChpuRJJwZd6AZVE33hK/K2o9zIlR+w1sfKX5qoMFoRB1JvL9JZ/bGPLHW
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=esWU1LvW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: restore timestamp
 configuration after device reset
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Saturday, November 4, 2023 5:17 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: restore timestamp configuration after device reset
>
> The driver calls ice_ptp_cfg_timestamp() during ice_ptp_prepare_for_reset()
> to disable timestamping while the device is resetting. This operation
> destroys the user requested configuration. While the driver does call
> ice_ptp_cfg_timestamp in ice_rebuild() to restore some hardware settings
> after a reset, it unconditionally passes true or false, resulting in
> failure to restore previous user space configuration.
>
> This results in a device reset forcibly disabling timestamp configuration
> regardless of current user settings.
>
> This was not detected previously due to a quirk of the LinuxPTP ptp4l
> application. If ptp4l detects a missing timestamp, it enters a fault state
> and performs recovery logic which includes executing SIOCSHWTSTAMP again,
> restoring the now accidentally cleared configuration.
>
> Not every application does this, and for these applications, timestamps
> will mysteriously stop after a PF reset, without being restored until an
> application restart.
>
> Fix this by replacing ice_ptp_cfg_timestamp() with two new functions:
>
> 1) ice_ptp_disable_timestamp_mode() which unconditionally disables the
>    timestamping logic in ice_ptp_prepare_for_reset() and ice_ptp_release()
> 
> 2) ice_ptp_restore_timestamp_mode() which calls
>    ice_ptp_restore_tx_interrupt() to restore Tx timestamping configuration,
>    calls ice_set_rx_tstamp() to restore Rx timestamping configuration, and
>    issues an immediate TSYN_TX interrupt to ensure that timestamps which
>    may have occurred during the device reset get processed.
>
> Modify the ice_ptp_set_timestamp_mode to directly save the user
> configuration and then call ice_ptp_restore_timestamp_mode. This way, reset
> no longer destroys the saved user configuration.
>
> This obsoletes the ice_set_tx_tstamp() function which can now be safely
> removed.
>
> With this change, all devices should now restore Tx and Rx timestamping
> functionality correctly after a PF reset without application intervention.
>
> Fixes: 77a781155a65 ("ice: enable receive hardware timestamping")
> Fixes: ea9b847cda64 ("ice: enable transmit timestamps for E810 devices")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>  ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 +---
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 76 ++++++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +-
>  3 files changed, 52 insertions(+), 41 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
