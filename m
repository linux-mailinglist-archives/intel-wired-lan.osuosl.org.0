Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA7F619CB6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 17:12:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 923284193D;
	Fri,  4 Nov 2022 16:12:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 923284193D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667578344;
	bh=cebdkgmoTo1lMTg65z5erSfBWN5xP3xiK8UuusHH5Hw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9bQ3FS30Y1/nnHVXSueWDnOjLryV0/gZJQxAR75nxpNNAtTWM2+2Q4lbSzAEH2Mpb
	 i40OGNCVCnxAbPV1F17a7xLWAvQ7kn/4YccM6jYtzHORWVJj8YGTR6PEnhogKPIqEJ
	 3a6YDBLazqLMmyXw3g/9p2S/fNCWrLlkoYvdrbzeLMhrbdegS9WJR7dSQo4G5C+qv3
	 DQBv2ivm6k1gElMvyWFsC964rH2pWwCe2xjFk5mussLU9AGqO8HsO0G/Ts9qI3FFN2
	 +zFOmdVAjYy8Q5GpiYTuVZ6PQwHDpYNrFlkya74hrknXeRt9nJKZIY0HUnWwas4/YO
	 v59E4ngKzbbEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUkmCwCBEA-9; Fri,  4 Nov 2022 16:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4404F41930;
	Fri,  4 Nov 2022 16:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4404F41930
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 259AB1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F386461130
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:12:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F386461130
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qfq4rKS3JD_Y for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 16:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3D3761123
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3D3761123
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 16:12:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="289722093"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; d="scan'208";a="289722093"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 09:09:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="629773188"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="629773188"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 04 Nov 2022 09:09:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 09:09:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 09:09:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 09:09:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 09:09:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+dy9OPA+G/w3DUQozjcgGzstDW+m8pnUbXgVjklT9byUCqVc0VBBl7FRLFyK6qvNQ0q6rvP875Dzz2DZ6RN10Es1AgEKfbk4176Kl1MmhhK8k9ucLei7wfzCVYdd6MjWomfOGs0jcmEohEZ04F/lYZ1KbrqgarSpVe/Ji/Hdx62yzNZ/U9NUU5xPtHlvtdcnowCg+obOtEpcM6hmwnDQJO+OPl58VBXHyky0GEhI3ANOpLymyLaymhfj2P+QyZlGaAQgN9JzRD+8Ij95Jg6EYTE8vYamhd0ya5i2VvE4+KLX48vHbiPXhj4NahsncRvOeCOiAT5L6+Ur/Cay3Jh/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NyISG/1hoU0O1dL3vEhYlf/jb9XmuoKjdVOxfRUHkc=;
 b=CkaDWcnmVTxFNthia3kZipNPgFsE62lnR/KOhzi8kBhTAzXLUh8/Q6ckBs3CNzlTKEkAT4TcpBNg/80eIDnIAxcGiHoro350sejWrfgEFFlvTRkxKhOnyYvjl6fHn0QR7xoHNZaJIzE381+TxPasRhPfU/biV1fZw0VJpmsssOlBanzUp2hwOVtD82YzMiND9aHEDakpK1LQySVsVTEjzI+OZZ+hCLZZB1SL4WDXRzEsv7zgV7iTQEBWsPZ2OBrtbyqoNgEcfPXkT8JNZFkYkcbTd1Kha/aeqHTrzxi+avuIrQ+YWmvRNzWhEbcJB9g1DyN8SeUVqGhHZTKvXu7nhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 16:09:00 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.021; Fri, 4 Nov 2022
 16:08:59 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: use int for n_per_out loop
Thread-Index: AQHY7xdeOHEpvL30Okq74tmrMPrDC64u8TIA
Date: Fri, 4 Nov 2022 16:08:59 +0000
Message-ID: <BYAPR11MB3367B41F947AA5C8920CBD31FC3B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221102235935.1170170-1-jacob.e.keller@intel.com>
In-Reply-To: <20221102235935.1170170-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW3PR11MB4684:EE_
x-ms-office365-filtering-correlation-id: 921f77a6-29b3-49aa-b2c2-08dabe7ee24d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OrtsCqnO3W1D4ege9yRJW/8XHaKC4Y5dViy61aYYoYFo79spfUaP5V7Cg5lM2Szi6dJnrfz5p09xRrT6Ly+hutYvROm6uQTiKrsRppBmRDI+LcfiVGDxHDLBdqFB8j9EyQEKCzDza9ZH+poWr+3i/mNODnilXZbxqV2R1iWpEv05YSHg6l+Wr/vCNXhfdrrVL2SD+KMPUlqZ+2p6AyQqUNQmGk8ZEtRlM/0s0P64qsxBhcx+hbuX9+lSmaVs8OtfWc5dS2yVqAa5NpA7qnoDtlWc7TBpvGPcvnyobnIBIpx8+E6wJImhFC5kwL5yH0JfSSJGVna4KWjjkV0hwddBOj5kSgJJelJnyd/0oiB6raFaDTdjKZQbm0zB7O7OoXjXbdjMHAfZXGVWfJyMvMNlS5bHgswhn8qXVnUoubbDTxf73LiY4BL2djuR5ta78ganVo4ZFFrrmwHUR5vfo6rngpIMsAJQD431k8rBtRMFGDwik9YGmdLVJQ99hZ4obpQ/V6xleXDB1p9ESKq4tyzAqTQBRDee4m3GTeVFLNFBImUG77bwQ+/SBqA/8cWIjPmcSsz29yk774jxeNF+XkjGul0H/+rkAhsVUhUvYSm04AzscxUHLD+64gIHK/wRd0DlO3h3Zb7B0USgfMpIppUwkfzDvhsK3s0P78ICt9iuHiR7spACIyWGCPCs2xNBBAdME2Jt9yiZT6OcVN1VQCOFBAoxrAfx6Y2sNglhQGhFtTluikotLr4KMSO0uvURrXuVYxWmxR+Dky+nPxlF4Kv35g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199015)(86362001)(316002)(122000001)(33656002)(8936002)(83380400001)(186003)(52536014)(5660300002)(2906002)(66556008)(66476007)(66946007)(64756008)(76116006)(66446008)(53546011)(7696005)(6506007)(8676002)(26005)(41300700001)(55016003)(9686003)(38070700005)(71200400001)(478600001)(82960400001)(38100700002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTRpcGRuSklVTlR1VXdWVTJiMmlsYStFUkpHREhEcTF3YXFyYlpldXMwODFS?=
 =?utf-8?B?eHF2eUJJWUlFdEJQVEY3YkppU1B3blpJa0tSM3IxYUpVSW9NbC9vdmxGZDBX?=
 =?utf-8?B?elJyT0JWY25WSG84REpwckNTRnFhV2dnMUJIUm5zRXh4bEJuR0xMN2NQZEpm?=
 =?utf-8?B?cXA3VFpzWUdtL0hEZldsYWRxajdSNkFOWG5LNWNmODdFQ1JUYkxzQ2htNVRi?=
 =?utf-8?B?VjVuNmxTVmhOa0RlSDF4S1NocGhNWE16bUdlandMT1FFTGZKMFlha2UrN0V4?=
 =?utf-8?B?VXFXcW95emJHM2F1RjRUTkxTL1k1YTFObE5BeG5hMDIwQkhOZE8vM2lZYm1n?=
 =?utf-8?B?MFBVajB4bTUrVHJEMHdhTDNSNW91STREZFdxTmdkZkV2OVBZdm9GZ0pWRTlR?=
 =?utf-8?B?SitJMXA5Q2VmUXp4KzEvbWl4Z2FOYU1oaFFyb2l4N1hDVnFRallhNSsvZVJl?=
 =?utf-8?B?aW83ZHpFWG1ITlQvVkRpaWREdCtVYitxeGhYN2hVdGtCRFRXS0NzK2VTclIx?=
 =?utf-8?B?SkYwekc0VjBXNjVrUi9aYUtyNkhuNEpJV1BReEVoaENwcW1kSEx6cFh2RThG?=
 =?utf-8?B?WGVlODBoWCtTVkJiSzhSN0dxZllUcTV5L05nbVVuRXpFS1pLUk1Xbi9JdlM5?=
 =?utf-8?B?YmNhdEU5MlNHbzJjZXVlR2NmNm1aYWVVWEFIeGZlWFhMQUJ4ZVM2REVESGkx?=
 =?utf-8?B?elFOWE1LVVJrbnJqODVJbFBNMlRzK1dpekRzZ2FOQlFtN3JRbnRueDkyU3pH?=
 =?utf-8?B?UnlQMDh5TFpOVWFyUUNXNEp4d1ZZTDdCN0FiWmhxV2ZNVnFTL2kySEg5eHNo?=
 =?utf-8?B?bE1oLzViTlNKcmsrUldUcUhNRDZSK2JraXFsSHRnMlVOS1dhUExZeFhJRHlO?=
 =?utf-8?B?d3VNbkh4dDZOM0R1WnJlT3Ezb2xwQ2JGUWVmM2oxYlROUUl3dDdmdHpOVDdO?=
 =?utf-8?B?T0djUzdvVDYvcW1ZeitzN0pRSHVITlNpTkIveWtiSWhaN3M0NkZraWh4cVBL?=
 =?utf-8?B?TDFmbGtBRG8rZkZlQ3pwQkpRNXBvcVRaSlRIMy9neDZmdGZpbjhHYVVVYVRS?=
 =?utf-8?B?MVRtdXF5K28wRjl4aXo2ZDl0U2cybWlqdGhPNGd4Mm4wSXpYbWFqZmZleVAz?=
 =?utf-8?B?WFZmY2lyYlZQTmR2cThvUGlOVmFIRDE0Tk5JS1BYSWNUQUwzYWFucXRLQ0dC?=
 =?utf-8?B?eUNZRmRjdW9weGtMMnRsNFZCRUJPVlpBVzBObHlHMy9qZkwzK0FzMUUwU2Q2?=
 =?utf-8?B?dE5MYnljdkxUZ0MzcnFFUGxleFFNcmtCTkgzVzdkZU53L3FyTWRsWmdEb2dU?=
 =?utf-8?B?ZnliMnZQUkZlUmpjcUdmSkNKaTVSTG5FYjEwRnNWS3JmaitNTy9rbE5YTEx6?=
 =?utf-8?B?TUJnNW9sV1ZhR3N5MFUyV2pVR01GUW5HUk16SFFpcWQ5VDh4VDZzV1pQUU0w?=
 =?utf-8?B?OEh2V2gwb1EzN0lPN0NRb1lFa0tQSnFCV29QcFg3Y2dnQ014RVp3YUNFZ3di?=
 =?utf-8?B?YjlnaS85TXVxL0Y5QnJzbVMvbVF4SFZxS0FvcTQwVjU1R0dTWWdST1FhVEk1?=
 =?utf-8?B?UkZhWmFQcy9GRnNJZ3ltTWJzZ0lFVUpqb1p3L0hpTnZkLyt1NTByakNUaWF1?=
 =?utf-8?B?aXZvTEcwY215amVHRDU2YktXOGJDK1o3R2U1aDJvelhZZnRYZW1pUHVZKzdG?=
 =?utf-8?B?UnJVeWtvNGxEVjJHQUIzcGpzQ2NlNWxNZ2RjS3JzdjNOUnA0aHpsSUtUZndk?=
 =?utf-8?B?TXFrMDdEVERmdnBscFFhbGdxUDhwcFdOaU1GOHgwTTBsemFhdWtnbit0SU5a?=
 =?utf-8?B?S21vOEJyT1VzcGNSWGdrcnkvQ2xFVlVLeG13MDl2Q2F6bzR5MjJJNHdZVVNi?=
 =?utf-8?B?NGw5S3p6N0Qrc01TTHhjWUU4RFpXVnBHeWpTaVJSeit2bGlsMVkxUTNzN29D?=
 =?utf-8?B?eUw4RFBuQlVoY0dyYStiZkswc2I5aitvRUFZandWN3hqQzcxYmU0Y1VTZ3ph?=
 =?utf-8?B?YzljSW5JbVhuZytXY1ozSDFFZlM4VmtVck1uTmFjMWtMUHlkbnZvMzlLeExU?=
 =?utf-8?B?Y0N1eDFid3RMYlBMWGFDSzR3YlZpY2hSQ3R5dGNhQXRGdk0yQ1FRVEV2cDFR?=
 =?utf-8?Q?pZr3fSHnFG00/FyBK5LyeVcpd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 921f77a6-29b3-49aa-b2c2-08dabe7ee24d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 16:08:59.7933 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xTZF8dO5Mx5QJXLkZ/iW0uez6N6GVCBqSIPv25vnuOn0YXj/NHB1PkYPw7bOOF2pJ9/ApFNjRRVSMqUYPdTE8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667578336; x=1699114336;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4NyISG/1hoU0O1dL3vEhYlf/jb9XmuoKjdVOxfRUHkc=;
 b=O56LQ8Mhe7sDqhBob1lDSRN6vWbDit67YVp9aoj+Kiv/yqAtuFXwqqHZ
 EgMs1D/f/biKpgtqjBYoz7ntIbA+fXGhf6zU9maDG8CgGHgj7AqT3XAD4
 fGRgjR7JNz86xVs+QZrtAK/bgOVHwHbUN7mwT01wO4f9Gyg66I04bDbXL
 x45EZoHvmLfriLHaaRy26eQPnUfkpl9ZatOtWC3aRLeczbvdmEb5i9Ia7
 QZHdiNKWgyoLF8f3RS248QlS/8Ax5WwzF6xZ97XHo3u6aJ66N3VajHQ6u
 iO8VTXfBzGKhNyGIvMA9bqm3D2T84l4ZeMoWY1h2jpEvAgvcvJYb0QoVh
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O56LQ8Mh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: use int for n_per_out loop
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAzLCAyMDIyIDU6MzAgQU0NCj4g
VG86IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXRdIGljZTogdXNlIGludCBmb3Ig
bl9wZXJfb3V0IGxvb3ANCj4gDQo+IEluIGljZV9wdHBfZW5hYmxlX2FsbF9jbGtvdXQgYW5kIGlj
ZV9wdHBfZGlzYWJsZV9hbGxfY2xrb3V0IHdlIHVzZSBhIHVpbnQNCj4gZm9yIGEgZm9yIGxvb3Ag
aXRlcmF0aW5nIG92ZXIgdGhlIG5fcGVyX291dCB2YWx1ZSBmcm9tIHRoZSBzdHJ1Y3QNCj4gcHRw
X2Nsb2NrX2luZm8uIFRoZSBzdHJ1Y3QgbWVtYmVyIGlzIGEgc2lnbmVkIGludCwgYW5kIHRoZSB1
c2Ugb2YgdWludA0KPiBnZW5lcmF0ZXMgYSAtV3NpZ24tY29tcGFyZSB3YXJuaW5nOg0KPiANCj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jOiBJbiBmdW5jdGlvbg0K
PiDigJhpY2VfcHRwX2VuYWJsZV9hbGxfY2xrb3V04oCZOg0KPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcHRwLmM6MTcxMDoyMzogZXJyb3I6IGNvbXBhcmlzb24gb2YNCj4g
aW50ZWdlciBleHByZXNzaW9ucyBvZiBkaWZmZXJlbnQgc2lnbmVkbmVzczog4oCYdWludOKAmSB7
YWthIOKAmHVuc2lnbmVkIGludOKAmX0gYW5kDQo+IOKAmGludOKAmSBbLVdlcnJvcj1zaWduLWNv
bXBhcmVdDQo+ICAgIDE3MTAgfCAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBwZi0+cHRwLmluZm8u
bl9wZXJfb3V0OyBpKyspDQo+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgXg0KPiAg
IGNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzDQo+IA0KPiBXaGlsZSB3
ZSBkb24ndCBnZW5lcmFsbHkgY29tcGlsZSB3aXRoIC1Xc2lnbi1jb21wYXJlLCBpdHMgc3RpbGwg
YSBnb29kIGlkZWENCj4gbm90IHRvIG1peCB0eXBlcy4gRml4IHRoZSB0d28gZnVuY3Rpb25zIHRv
IHVzZSBhIHBsYWluIHNpZ25lZCBpbnRlZ2VyLg0KPiANCj4gRml4ZXM6IDllZTMxMzQzM2M0OCAo
ImljZTogcmVzdGFydCBwZXJpb2RpYyBvdXRwdXRzIGFyb3VuZCB0aW1lIGNoYW5nZXMiKQ0KPiBT
aWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cC5jIHwgNCArKy0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiAN
Cg0KVGVzdGVkLWJ5OiBHdXJ1Y2hhcmFuIDxndXJ1Y2hhcmFueC5nQGludGVsLmNvbT4gKEEgQ29u
dGluZ2VudCB3b3JrZXIgYXQgSW50ZWwpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
