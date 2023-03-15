Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1A66BB36C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 13:44:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B22D41836;
	Wed, 15 Mar 2023 12:44:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B22D41836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678884270;
	bh=Kt+re4r9b+8JMBWdmVFxSh3CBv4h61lT6bMSYk8s3nc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZkY4eui/NCd8sBNJr5YhCdqAl7puBZCntsnTcVtmuyRfUmTSu+qD9okK6FPvJj8St
	 S4BujZfQRRUiyHTNYIRwH/YtmKAf2O1AqM2WSIhOA9DyeTIO5zArtaTIxupKZm+2kY
	 UJ4u3MAM7YWhi4Vm0FxXMNbKCJsqhkWoNw3fuzmYHu6NUyvOfvizznONv1c1jYfQ+s
	 Gw76JCLwEHohQalHQhds4TRW5Tnjho8q/r0qLkqySa/v1ai5lY7YHx1wpzdJyy2VVE
	 fTeuz4N/rP6/Ug52AxIBWu+exNsaa7x7gokqTUQOmIczEV0iAcSKm8qmzJO656IrrT
	 /wif2/Y+yqfRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OJ28eO4z5Xxd; Wed, 15 Mar 2023 12:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CAAA4182D;
	Wed, 15 Mar 2023 12:44:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CAAA4182D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77FD81BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 553E960C03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 553E960C03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s25fvdr1-vOx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 12:44:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F53A60A8A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5F53A60A8A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:44:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321528492"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="321528492"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 05:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="656747441"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="656747441"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 15 Mar 2023 05:44:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 05:44:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 05:44:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 05:44:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 05:44:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ca6uhGD7R7z+mnl8HCrxKYI0qNEr+FVwGCQ6EALkHjArbVRyueRK6soUQ6fncfASWCWOww0u6c3+Z1/KQtzt2FUElMNCcbzuEneJW4vEPkyiBm0QsE5qxwzQ9JxKaR/2tCs8WedNNsuAZ0yJNkQRLt8YyJXCXBM+j4SZZQHdCek83XT5kJl0UGT9eVUJHGKaDjKrWcMJvlQi0TQk3kK7F+kivHpATktJU423tgIrN5mdBh6BqMjUq/8Kuao/BZrZf0LTqDaLqMPrrn/nRnivsuwukVFvk0ombgX6w0ZlcbjDlQHyHPBBBc0Tg5xYZ0dQbXUp3H2vBcM8PWyqdOsgOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hekz9ggjsOsjG4PT1uthTAt/tiKyyEOqmJpOH6Ad0NU=;
 b=bXU3BjhTtZRIeIrDZLtTIgE8elzOEPX2yoxnNPn6uOo7jtI54Hr2wrX+4K/iwuelFQWCA6AWMZUUKKKJ6YPgXO7kGYLINahYd1KpPDIX7F3iRWzj8EIPSQJ4MpjEHTsXaXZmgKQCSaykepXOZNeN+c6C+AUWUth8DT2Bm+GRv7IjiMjoEDI+11hRNFBNO8GOEd7beT3yOm/iyqInM+kRRGvLh6dIUC3jbafcf8Ftt/10IyTW8vyl/LNANWrIeT+sxlLESvj3xZR1mafX6LrhJ+Kd8xXfdJ1ESLzRHtV4F51sg77R0kBs6f5vJHtRyKgWtlheLXLrfK0IDZvxpBRNzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by SA1PR11MB6823.namprd11.prod.outlook.com (2603:10b6:806:2b0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Wed, 15 Mar
 2023 12:44:10 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::db8c:a4c3:1b01:5c94]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::db8c:a4c3:1b01:5c94%4]) with mapi id 15.20.6178.029; Wed, 15 Mar 2023
 12:44:10 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [PATCH net v3] e1000e: Disable TSO on i219-LM card to increase
 speed
Thread-Index: AQHZRsekTk3jI64hCEGOW1zAgzP6nq7bBKkAgAAI2wCAINv14A==
Date: Wed, 15 Mar 2023 12:44:10 +0000
Message-ID: <BL1PR11MB52886D1CD0C802757A2C6E3587BF9@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20230222140741.35550-1-mateusz.palczewski@intel.com>
 <20c52c7c-c3c6-ff3c-469f-ed3cfea88e1d@molgen.mpg.de>
 <CAAd53p72mMcUnLujy2GXMmjtZHUM5kvtx1nEBtS5OsqFzftmLA@mail.gmail.com>
In-Reply-To: <CAAd53p72mMcUnLujy2GXMmjtZHUM5kvtx1nEBtS5OsqFzftmLA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|SA1PR11MB6823:EE_
x-ms-office365-filtering-correlation-id: 3cf722d9-0e8d-42cf-abbc-08db2552f95e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EsntzQ1phwYSn6ky6sEUtkCHfmxx+Fz00DcGSSxVNasGt8bEIRtrvPAJHuTjDNWbppe6xK5EI4NYgr2cbNYAwASrPqlh9ebuir5aQS2T5BIkqmBzyWM3875A3AYas+xuWMo+W5LsjfbD0WXNsylrWMKCoMipIf0UecFsZtd/qLNDR4ISBc8LGOhSBA0vOqNoJW8gCeDSDnInEti6P4XhXCyVV/2g+TdJeKxuaI4pKJ570wQ02X7BDG/gU79S7ChN7kfsiWmbqdEpp0/Ud6IOw312/uqoRV8EV209xR7xjqeKDWvvnwJATu5TkT0EmuAb53z0g0I6KUEP+E9zM0H3iW3aADkwWoCmK/19eGwdsDaRXfhyOFYhhpIO29OP2+g+iGE4QNFb5AoFm6qtXiYVuuP172zpz/AWRdzeHmJ5L1O+j/28LnCJtDeDUbi/uGGIxwFAJK3EMX3aQhcKcJQhARW2j9GEI4COFhUB09tIszkPCJPef1XGWCpjoi6jZJTN2XL4nuW7/V4RJZP5fshRkcXFtuhyJKbf5F/C7aBtaJvXWES9ealx2+a34V/VHF0aalYbDolE0b6EpAB/vjGqF8jTdA05szmnkwHnP5Z6t61W1qiD2fBf4I4LdJYSHUlryHPdW5ig/Bqam2coqQMwkTjpAf/HvvNC6VfCurDHU3fs6kgOUwRznqGIjJE5CQd/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199018)(4326008)(8936002)(5660300002)(41300700001)(9686003)(52536014)(186003)(33656002)(86362001)(55016003)(54906003)(2906002)(83380400001)(64756008)(6506007)(53546011)(66556008)(76116006)(8676002)(38100700002)(478600001)(66476007)(71200400001)(66446008)(7696005)(316002)(38070700005)(66946007)(82960400001)(110136005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UkdBSVhzWDNSeUdMQ3A0YTNYaTRDMHVDZzYyalBYNVNzMHN2WHJVVTBOVEll?=
 =?utf-8?B?UTZlbkV3YlZFaVR4YXJCWnRQNjdPTDJ4OHEwOUI5UVFMWFZrVkNpR0lzY3Bv?=
 =?utf-8?B?ZVhwM1hYYW1VNFZ2NFpnd29xS25sQVQzcTZmcndEYzk3UWdtOGYrMDRYdkg5?=
 =?utf-8?B?NGVsMnFYYlpNUU5MNVQvY2Z6bFBYQkkxQk9rbjRqYnBqNEkvTG9GM2svQTFu?=
 =?utf-8?B?UlI1MlRseFRWd2tGbWxsQXNxaTlaOUFkZzNxeTRZY3BicVlwZW5LYVVFWkVv?=
 =?utf-8?B?YjFHUXRoaHNXU2p6VlEzUkdydUVoVloxV2g2VVpFQ3AyOGtKZnU3Q0ZlMHU5?=
 =?utf-8?B?SUNJUW04bXlzdjhodnFOUTUvekdIY2FLMnVXYVd6WlRnZmpwYUNyLzNzeklG?=
 =?utf-8?B?akZYS2hTZXZKUEI0V1E5NDNMaFBUcXE5ZGlaaWZ4eTYwelRvSHRDRkxFcnNn?=
 =?utf-8?B?K1ZFN0xRQU5Kdk1LaHJ4M0Q2NHFqL3NmakNVN3JPWldjZXVYK1IxZVl2aVJ2?=
 =?utf-8?B?MVlWM1ljRnlJUG1XZzVkd2g0MXQwdGYzTHdieklwOUJXZEVSZVlTOEZnbGU2?=
 =?utf-8?B?Y1MvbTRhNktUdFFyOUxOWDBHTGU4VXU3QS9tYUdGL0NKRkorVnRsc1AxdWds?=
 =?utf-8?B?TkNSTlZJK2dXQ2hvN1I3ZGFZNS9JNXN5RjJhb2ZTZXp4cXh5QjRyN0tXTHpV?=
 =?utf-8?B?ZHdra2pkVzUzOHdBRmhLQ1MvZlV3VlJnSHlyelhid0RNMXlqZWxPeTJ3NEhk?=
 =?utf-8?B?elBpK25aQXpxQlI3Y3VKQTcwTlBqUFhWM2RSNkR6Y3dzNnB4d3FhWTFmRjMz?=
 =?utf-8?B?ckIvWUkwcGlFRDIrcDF5Y0lNeGFES0NnY3VQWkFic3dOU3c5YkYvSUs0dzRn?=
 =?utf-8?B?RE9TVnBpNGVqQU85OTE2SG5TTGZOOWh4UVpmR1g0L2ZHZ3VBN3hLUmUrc2ZU?=
 =?utf-8?B?bDhEZTBRNGQ5cWdaRVcySG1lZmFNRlU3U3l2NlVReHY5TTlGOXIyZE5QYTBo?=
 =?utf-8?B?ZWhHOTlvaVBQcS9GUWV5T3JxcVpVRkRTakpJZHB2L01VYzZLVHcwOWxvZ0xr?=
 =?utf-8?B?YXlQOGN5U0luNkl0VkxLWWU4RmxwWnNWS0hFTUlwRUppY1R3bnlCR0hFMXNy?=
 =?utf-8?B?UUtPSVJ1S1Vra0ZYcTROSVIxMzFhQTdwUFIxMVdUVW92bmxVeTJsV2tudW93?=
 =?utf-8?B?TkNCMVdmT1NCWFV2MWRYaC9NR2gwVHZkbVdGdFF4dkFSeFpBM3JsOU5MT0dS?=
 =?utf-8?B?Nm1xNTQ2Y3JRbDJTN0E4VWpzUVB3RDB4bnMxSGpLbU1CWnp2NkdQek42RXJw?=
 =?utf-8?B?TkdYWlFHME00UUtFVjdvY3E0WG9FMWJmQUhPSVp0czQ3Z0x3RXFlczVjVUZi?=
 =?utf-8?B?aE5La2xXUnpxSElHeFBtVXJlcUhKTUhnYW5nbGZremRwelIveHZURHRUZllS?=
 =?utf-8?B?eHdkbWt4eDF2eXBTVkZITG5OcmprNGdZYmxLTmhtcnFqKzRuYURSQkNwbGRr?=
 =?utf-8?B?dlRPMW1tdXNDMTBVbzlnem11aXZDc29KQmJESk52RFJYWmlsbXVSbDBUWXdj?=
 =?utf-8?B?MlY4RGthd2lacVZReVBHRG5vdkZSMUdvNVZDNGF0NTN3TkRPNTVqOFdVYnNY?=
 =?utf-8?B?R3UrS0VLOXBjL0F3Zk9jMXFLTW9wMmlMVE83ZS85eTEvK0tFNERad0xOTm42?=
 =?utf-8?B?KzJ3MVdzaXpaZy95SzRPdHkxcUJ6bmpiYnd5WTdBalhsNVZUNjc5dWp0cGNL?=
 =?utf-8?B?cEM1bnlqZXZKSktDeHpSVHB5S25wR0loZGk2NjI3d2RBaS9oYkUyUlRmUGxR?=
 =?utf-8?B?aG8yTEEwTXZTVlpJRzZzTVAwMzlXcTJoRHprRW1PcjhqTHJPdVlCUHE4NFYy?=
 =?utf-8?B?dzhXaWxKaWM3SUJOdUphQzErdVloVWtURllyS3lKdmJJZ0YvRDBaUnh0NVFH?=
 =?utf-8?B?UGh1cmdEYnhhRW1lUU9YTWcvSFV2UEJJK0xOMzNyL0FyV05YQTRmRDZkcEZX?=
 =?utf-8?B?UEp2bFFpSk9FVm9YUjZiWVprUUt5QVkyOW9RM05tVkliM3VnYkNTUHhmeGly?=
 =?utf-8?B?dmI5a1N0QWpjeDQxK3c4OXdwSmdGaFQ3c2d5SDZZWTYwMXBiY2xPak4yZmZT?=
 =?utf-8?B?bU5INklBd2FKK0gvRVluN2F6Z2VFMmNGMVZmSjBJeDNsN1hScEZOZUxZNkda?=
 =?utf-8?B?WFkzTjhLZ2lYYmpNY2QwZ2U4cHJ1c1ZhbzhvZzBqTkZkRVdlU3RsWncxODh3?=
 =?utf-8?B?NGxxREJoZytCMHVLWUVzeHNDeFhBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf722d9-0e8d-42cf-abbc-08db2552f95e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2023 12:44:10.3864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmRzakb2YVLcsfQZs1+wc27jcqG4n+P9xYPPDklj6qjOFRBL3CA2g4Piy3p9BRBm70uyxHNkfHwarrgrsS6dc2Fck3YsdOT6YG9T43sjjy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678884262; x=1710420262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hekz9ggjsOsjG4PT1uthTAt/tiKyyEOqmJpOH6Ad0NU=;
 b=E7ZgKivagOc1VsePPC+ZSBeEirydwa7rGadaNfuG5j6WyWl5z7FPNPXI
 5wj3KVnKwlSfh11HLRqJcxoId8w29sukwItQ16JY8KFDjEk4XGeD8qb0W
 BiLOE+4by3ALWomJE+rP5vlfv+O9OeprfojCw6hvMwd8PzO+udFultToF
 Bc1IPlx2xCJ/57YswpR3DNUHNi3vaKwBHj+FBrMGiEMzuZlwUI+oXluBF
 0C6rhYn4Y2F7Vqy5ZJsTtOJRY3qEWBbufPyFoEEPIpbVIV99OyV3k9ozp
 2j0K7JNA8spi5ed/zSIdFwSngdYGm0Jun21BM7scA0Sx7CDzRYvzb3ovK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E7ZgKiva
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] e1000e: Disable TSO on i219-LM
 card to increase speed
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Basierski, SebastianX" <sebastianx.basierski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
Sorry for late response 
> Hi,
> 
> On Wed, Feb 22, 2023 at 10:22 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
> >
> > [Cc: +Kai-Heng]
> 
> Thanks for adding me to Cc list.
> 
> Please add me to the Cc list if there's next revision.
Sure, will do.
> 
> >
> >
> > Dear Mateusz, dear Sebastian,
> >
> >
> > Thank you for the patch.
> >
> > Am 22.02.23 um 15:07 schrieb Mateusz Palczewski:
> > > From: Sebastian Basierski <sebastianx.basierski@intel.com>
> > >
> > > While using i219-LM card currently it was only possible to achieve 
> > > about 60% of maximum speed due to regression introduced in Linux 5.8-rc1.
> > > This was caused by TSO not being disabled by default despite commit
> > > f29801030ac6 ("e1000e: Disable TSO for buffer overrun workaround") 
> > > implementation. Fix that by disabling TSO during driver probe.
> 
> Does that mean "watchdog_timer" isn't scheduled?

I think it is, but for some reason forcing TSO to be disabled in e1000_watchdog_task() does work only after reloading the driver on server and not right away after it was booted.
I believe with the solution posted in the new patch it should work right away.
 
> 
> >
> > Can the code added by the referenced commit then be removed?

You are right, I will prepare new patch version with removal of the code that disables TSO in watchdog task and instead does this during probe.

> >
> > Also the questions from the discussion of v2(?) was not answered, why 
> > the conditions in the if statement of the code added by commit
> > f29801030ac6 where not true.
> >
> >      /* disable TSO for pcie and 10/100 speeds, to avoid
> >       * some hardware issues
> >       */
> >      if (!(adapter->flags & FLAG_TSO_FORCE)) {
> 
> Yea, my idea was to take FLAG_TSO_FORCE into consideration hence the adding the change to this if block.
> 
> Maybe someone still wants to enable TSO despite of the downside?

By disabling TSO during probe we are not shutting it down completly, if a user wants to use it anyway despite speed decrease it can be done manually with ethtool. 

> 
> Kai-Heng
> 
> >
> > Missing Fixes: tag below.
Thanks, will add that in v4 version. 
> >
> > > Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
> > > Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> > > ---
> > >   v3: Changed the patch to disable TSO during the probe
> > >   v2: Fixed commit message and comment inside the code
> > > ---
> > >   drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++++++
> > >   1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c 
> > > b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > index 04acd1a992fa..863796acf8d7 100644
> > > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > > @@ -7529,6 +7529,14 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > >                           NETIF_F_RXCSUM |
> > >                           NETIF_F_HW_CSUM);
> > >
> > > +      /* Disable TSO for i219 to avoid transfer speed
> > > +       * being capped at 60%.
> > > +       */
> > > +     if (hw->mac.type == e1000_pch_spt) {
> > > +             netdev->features &= ~NETIF_F_TSO;
> > > +             netdev->features &= ~NETIF_F_TSO6;
> > > +     }
> > > +
> > >       /* Set user-changeable features (subset of all device features) */
> > >       netdev->hw_features = netdev->features;
> > >       netdev->hw_features |= NETIF_F_RXFCS;
> >
> >
> > Kind regards,
> >
> > Paul
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
