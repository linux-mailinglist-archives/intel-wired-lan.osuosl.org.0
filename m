Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE776FCCB3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 19:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A1D884691;
	Tue,  9 May 2023 17:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A1D884691
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683653215;
	bh=u4hPP4/Knncp7XCrKO+bKqtSyKeQ16qjJdOQMrZN6uA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a2u+GT+Mj90D0mWQJTauwIWWoxw7PLMvycGtdEgFuhy2oqtIbVHROC2hE/oyOJMhQ
	 xH83ysYAV1IOttov3Stv04/oR1E27NKbJ9rMuZ19wG7nCNe4u8O1go8UgWizipTxVI
	 H1F3J+9wvrw9eqgLm/nfYLNoxl0miDwSNUf8yXCV5wSInFn0cOFYpDjEnHzSVpzgOk
	 QD/SN+1X85uXVLY0DUGcDM4Vt6WpCFfPI/M/MTEHeoRIaE0N2u5JvXZ0kkYEJlIHUp
	 VOpgidfU1gr34rmVHqHgrFzO0yAaFe04PW8Pw6yH3RHZMPEg3jtwR+7hehYNoXUcLj
	 XsMsBOgP6Qn7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiEYCLJCC1WU; Tue,  9 May 2023 17:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21F2C83FC4;
	Tue,  9 May 2023 17:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21F2C83FC4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2BC91BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 17:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A06C61665
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 17:26:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A06C61665
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9sc4wdw-T_Mj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 17:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DE8A61653
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DE8A61653
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 17:26:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350031416"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="350031416"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 10:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="649417647"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="649417647"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2023 10:24:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 10:24:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 10:24:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 10:24:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 10:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/nSfmqXcQM8IvfKBqotYizzp+gVFewoOFKS1G2oGnglZV9B6o+FlZCRNb9EjQ62cyAf+6fxvB60IByTWD6AgmYOv6zxavMtk/abmTHQa4Vd43VgUOjGGph/G1mZrk45GUHOmNbuo3RKvm5N7qAXg9oDUeUDedciyo68S/rOkj5xaIA9lf9zngCELpj8GkDFTFHeR5/Zb0yJQdmqTuHGI/GSKVcEKJ8IQw1BqN/wLzM5frD+rp6bNFtI9eGI7qV9A59Tod+GfbY3bSt9H7sNn6fIqn2xjNJOj3Ki/jgH089om7EuKicZKQK0Q50+GN263j2BxZlFCWycFTFvKiWc5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7df3te68bz/TO81iTgrKKyHCHcb+WVvYp3JlOpA+Gy4=;
 b=UM5AVELDKG2zqFzpEjmR9PeAoCVsKWToHDQiuvgoScTgTkeZ+iB/406SNqUsAJ2r49WsjDKiRfY/PV04vVW4UF08w0C9xtHfUsCfIZc+vlo5aQij+JB5S5enYGkSn6uVMtBbf/PLZ4apejocEQ986JKtBmUxe+F6XxZz4F2ZXgyog7mHPbJ0CNhLFeU1InZ5eAUL9clM//Y9Agt/MI0LT2gqHKV+XmrqOdjvGClLMuf6UMSYJw6SsmbmExooFZaSILnf8Taov9Dd9eD+qkwhpPgJ8AWVa4t6UHlLiNsjC0+K8HKLSPtPlOPfErF3dSDugvthLSprjSH55VETtzDQRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CH3PR11MB7867.namprd11.prod.outlook.com (2603:10b6:610:12a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 17:24:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9%6]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 17:24:01 +0000
Message-ID: <84750f92-40b5-29f7-fe55-148ead0b1811@intel.com>
Date: Tue, 9 May 2023 10:23:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
 <970e057f-eed9-69ae-b321-ff78049e33ac@intel.com> <87y1lytqk7.fsf@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <87y1lytqk7.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CH3PR11MB7867:EE_
X-MS-Office365-Filtering-Correlation-Id: 62ce5330-733e-41c1-a50a-08db50b22e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IfNs7Ba+I9VKu3QvN68zpEKzcakVkmikMhTumfGha4nqkEB3mc9mpZIg9s+rP2VAp2OiVpxBYHtY7ZLS3FxRx0E5A6V1SFg9IZ80uKVHxqaAOngTH1mmY1kCsuOy2FuoELueOoWzRfWdt1J4Y5WzzEc9kxZoHgP0EDcHX/2D+8L6XDaQTIcP8VfWpc0CLWPkpQNuXodghPnExeRq4HXilDy3ogHAXpFwXCYi8J1u3kJf3JDMGf/aFafvQRa2a3snIXzoAOMg5bYlmHsWW2Cgq3GjQdAraoyWykMKpoZgOhfeNGNuho2zd7kj1dTGhIpbs8HOzDT44TSumPXNun7BFnppX0HWiNdPBFVKlBGH9+oUCXQ4EiTE3aG5NaHO9IRLd9lOjTAln+1hV3u3k2bfI+bEsY6c1oAwgQDNB+NB580+/3k6WDW9nBrhC/X3BjdJj0xZ1aPrZIxDojqW7BKNJbT1a/PHOIXpQAmgudh4VqpOlqO/krSquotpwcf/F8p2qA07ooinNdBJKMeRMbyRGEJz6NCvfTJnGKykcjojH+VlzFNG92E5fFMcQISVPwUYkO4a59ySZkOeCBdD0fKG71H/zTtMCNA+XrhB67hEjij75cakEYFTr1qn+MKHX5x8/CRFbT3VEEwELCpM25r4pQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199021)(316002)(83380400001)(66946007)(4326008)(478600001)(2616005)(6666004)(6486002)(6506007)(6512007)(53546011)(186003)(26005)(66556008)(66476007)(2906002)(86362001)(31696002)(36756003)(82960400001)(41300700001)(5660300002)(38100700002)(8676002)(8936002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFlmREgxZ0dRb3RqRGxMOTkyV201ZXpHZCtaMGNkQTFELzdrVnA1VEJNMGpH?=
 =?utf-8?B?bCtsbjFsaGpUcGpUSzQzUWl2UFA4WnhTZ2tPS3NsbjIzQ0pZY0pFTkg5UDBL?=
 =?utf-8?B?WlRDTUxvMi8reS9kZERKelNFWWVWMHl4OUIrSEJqSFZCV2pId1g1dmxjYitQ?=
 =?utf-8?B?OWtFWXIvekdMa2M1anJZYTRRYmpQY0g3cklIVWNkMk9aT2lrMHlMT0tRS1BS?=
 =?utf-8?B?V1lTaUFzak5pbTMyRXQ3eVgvSTFLU2xGZmtwTlV6RHdXdDZ3cWpmOEZpNVJC?=
 =?utf-8?B?NW5UVy93bElVaVNPbHNpU2pEM2h5Sy8zMzhFY29RaTUzejBUdU9ueS9UUG5N?=
 =?utf-8?B?WGo2WDY4RW9lOXU2dG1JQk5WNW5CVytFbUI0SGpJR0NRN2d2STFraHBtdHZn?=
 =?utf-8?B?S1dSK25iMWREY0JZR2NwTmpNT2ZueWhhaitwL0VSalRRNGFzeHdFUXRCTERL?=
 =?utf-8?B?aDM2VHIzRE9pTjlHb2I5b3RVaXpRNzZrVFNrU0pWV2NnTjdtTXBaeWExWWI4?=
 =?utf-8?B?RjhZQmZ0Nk9CYnRwdHZFS1kxcU1pYWRDRUZzeVIvM0kyODFTTy9IVHJHWkQv?=
 =?utf-8?B?QTFIUENkZDBLTjJKZEF3NzZ0MUorWnozejFDNEt5VnVjUjVmRzYxZzhJZjZK?=
 =?utf-8?B?TzFabG0yNzEzSFJzcmM4Wmgwb1diTVFuY3RBVThqS1lWS2lMZkFCYktXbk9P?=
 =?utf-8?B?MStvZGEzM1VVa2dmam04b3UxRFlrTzdsOEVJVGNVUWFSMUdjYTdENERMSTgw?=
 =?utf-8?B?WmVEd0JXTktnRzhmRXVWZStNYTNXVlFuV3JOMjNrcHF6NmRqN0N0dmRUa1Z1?=
 =?utf-8?B?U1J2U0R0eVRyM3Yrd3JSZUYrYWNaTkFoQzVram5DeDQxUjMzSE5hRnVxMmdK?=
 =?utf-8?B?Yk03UVRoVmZiM3YwM2NnT3ROdzdpSk9GcDAvV2JYdCtaY0YxUTdUN2lTMFBl?=
 =?utf-8?B?c1lZQVdySHZ4UkxaaXhXTWh4ZUMwWHJaTVcrU0cyM3loZzI1VFkySTQwZUZm?=
 =?utf-8?B?S1docjdjMU9pa1JUVzB6MUlpQ1ZwSEpEdmFvdEwrcWlGYXU4RmZERGJHMERs?=
 =?utf-8?B?Vmh5RkJvTjhHNWxrTzdzWDh1ZVBYM2o4S2NBK0NEZSs0RWFUQnpEOU1jVWQy?=
 =?utf-8?B?RlVzcFlCNkY4U1R5b3Q5dUw4S3VxRFVKbDJPQVNMNDArbURWVjdyNENrSjBH?=
 =?utf-8?B?OHh2ZlkrSk15WkxFcU51dXhaaFMyVXlkVllqMWllSzUrRStzZHMwWEZkYkZQ?=
 =?utf-8?B?OVdwSDBPdDVxWjNhT1lYZ1lia3ZNT25CS0p0MTFuTFVTM1g4QVVDaFptVlQx?=
 =?utf-8?B?VTNVV1FWNGlKVHB5MTZKd0RFT2d4cDFFYldFOVkrbFZ6VkpodksyaEd2T0Rh?=
 =?utf-8?B?WDRPQzJEWmprU2NIUHJyWmg3bE5TOFdRQVI1MDFiZWdjd093SlZIR2g1Vk1F?=
 =?utf-8?B?RFR5MkxDeDFBUTd2RC9DL1FNM1ZmTHVCWXg2MDdOcm9TOHBIWVFhR1dPUjVO?=
 =?utf-8?B?VlB5b2lUUmVSR2FyZjhDL0tIZzYrZkVzNVRUQy9vR0tySTZrdnJjN0tWb2dX?=
 =?utf-8?B?MGtlcTlwZ3puYUhNQVdXZlFlSWwxK1BZZ0dmWEF4cm5pZy8zK0hndU0yVVZn?=
 =?utf-8?B?NnhIaGJCT3h4a0RaZ2YxQnVoZVBSWHNKZ0pQbnFYSmI3ajJOK0dpZGd4S3o0?=
 =?utf-8?B?MVp4OEl4NGhkL0h5cWJPV2tnUUU3RXBLT3BMWjJuQXVnYlgvZW1NZlVsUjVB?=
 =?utf-8?B?Y3FleXdDcE5ON2ZlMllCZ2tNcWp6SElZRkE3bkIvcUpWVDVYMHM5US9ZV2N0?=
 =?utf-8?B?cWFjNmxFUW0zUkRNMjFxSVVYRXd1dGtIZGp4SGFyK3J0TVFrRGdRVU5tc0Rv?=
 =?utf-8?B?Z3pYRVh2dVp1N2dYZEc5UU5nTCs3V0Zkd0IyMS9OR3BleFlQS0ZRVVRTS3dt?=
 =?utf-8?B?RzNXRC9yUkJGM0xjM094ak9pRG43bHA2S1R2WmpKT05XeHRJVTc4ZWk5ajhZ?=
 =?utf-8?B?TXBFS1pwbzY1N2E2VXM5REJNQkJtSVFBcm9rb3JMbngxbk1LV1hONzYyK0s3?=
 =?utf-8?B?c0tmYjdpdFM0R2ErYjYxR3JhY2dBMEwxM3ZzYUsrTWpaZ2JZSmt6WVBQZllY?=
 =?utf-8?B?c0ZBUFlCR0tnV3FpNTZGWXAwa3dOM3I5L3d2RWYwNk1KbFBINE40bkF4MWtw?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ce5330-733e-41c1-a50a-08db50b22e18
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 17:24:01.3275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hhyyN7DYbCiNl9AM+//ZUMpQDlqtFGSb/kRkP5w0mmSnKYJyLBYA7marz9+XbqtYX6i/+jK/seFXp0xfkq2SabF4EvfPJEzibkRjl2bOTps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7867
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683653208; x=1715189208;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/9rdx1u2gbVMEo3StHBoKtNyB2Cwl/Drm1YYLyAG2Hc=;
 b=V2PrTfIZ4Ikk2UteYN1i8ejI1/34hLldd/mdWRLwzPYSAk7AI2JZO+HF
 dPLZyZicEBhTzG5gLq/9rgX+/TvRXnQJgsC4DX78Q4mRVJEmsqdbjb92P
 nQCLiWtlfe27t9uZMQBovIyikcV8m11h6IO1nTa6ZWSJ2YOT2uCDE30i+
 JS8il8upUdb0PLractZ69v06Cw7Uc8+fetsQsfz9f8EdpanMD7P+LPw63
 fnkvAXJQ0zVzvzCd6tB9k2a91wA7xPuQSUKbwMVAqXNwy8PkrIaS2B7iQ
 iRK7Lj9y5H5v66pxi+47Nov/KrBj1F2GxMMwJ041PlOawdMet9UlLXAuA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V2PrTfIZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl v1 0/5] igc: TX timestamping fixes
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
Cc: kurt@linutronix.de, vladimir.oltean@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/8/2023 3:18 PM, Vinicius Costa Gomes wrote:
> Tony Nguyen <anthony.l.nguyen@intel.com> writes:
> 
>> On 5/4/2023 4:52 PM, Vinicius Costa Gomes wrote:
>>> Hi,
>>>
>>> Changes from the "for-next-queue" version:
>>>    - As this is intended for the iwl/net-queue tree, removed adding
>>>      support for adding the "extra" tstamp registers;
>>>    - Added "Fixes:" tags to the appropriate patches (Vladimir Oltean);
>>
>> In most cases, net patches should have Fixes: tags to them. Patches 3
>> and 5 don't have them and it seems like it would be applicable to them.
>>
> 
> Patch 3 is directly related to patch 1, but I think it deserved a
> separate commit, as it has a bit of refactor. I can squash it into patch
> 1, if you think it's better I can do that, no worries, I was only afraid
> to make the patch harder to follow.

I understand the reasoning and makes sense, however, I want to say I 
recently read on netdev a comment for keeping it in one patch for ease 
of backport.

> Patch 5, as a hardware issue workaround, I didn't know if adding a
> 'Fixes:' tag made sense, but as a way to direct patches to the right
> stable trees, that would be a good point in favor, even if it's not
> fixing a bug in the code. Is this what you had in mind? If so, I can do
> that.

Yea, I think a hint on how far back to backport would be valuable. I 
believe even though it's a workaround, from user perspective, it would 
appear as a bug(?)

>> Patch 4 seems more like an improvement than a bug fix? If so, -next
>> would seem a better path for that patch. Based on the 'for-next-queue
>> version' link, there are still some patches remaining that will go
>> through -next? Perhaps this can go with them.
>>
> 
> On a very loaded system, for example, time synchronization can fail if
> something blocks the system workqueue from running, so in a sense, that
> patches fixes/helps some user visible issues. But I can see it both
> ways, that this is an improvement. What's your preference?

I think I'd rather err on the side of fixing and it's already here :)

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
