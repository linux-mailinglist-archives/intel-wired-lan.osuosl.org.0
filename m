Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 989CDCD2BCF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Dec 2025 10:10:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AC3260DA4;
	Sat, 20 Dec 2025 09:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eI6wOE_O6R5b; Sat, 20 Dec 2025 09:10:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50E3360BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766221811;
	bh=JgJgQRVymXqBeQe+OErAEmaPEJda2WY9JMwYGRAWT5Y=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=feAL9tCL6iIKs9gubbCbdFEHP4RQeiMfD7CwduQpaaUNgPWnzVcnFCmz6Wb+TVEcJ
	 NI+/V86xyXjgKRi95E2IUveJkFmxRZcXICKO8nGI0FA4MRH5C/SEkcFNEo+lSwjDsF
	 R/lDIdt5bqZPHqjK559fiahalzT90Z6VlYQkNHBPRQ/fDcTaLlNjOLZ4/nxgOba2my
	 aYs798eJhpf3YKSR/kKK3Cd6chCfpt8hEhoeAgb+5QmEh42AeoA3HDmmPlPbQ8gEDB
	 hw8ILuOrQ44J4RvkkONHt+NFl/0RdOtHqcCvyLPsCnlLOZ/7H2+czqiy0mI9OzGUp4
	 7XNhdyUQ5qyKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 50E3360BEE;
	Sat, 20 Dec 2025 09:10:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C6D23119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD14B83C2C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:10:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zNqqqZPITs6I for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Dec 2025 09:10:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.71;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C92183C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C92183C12
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010071.outbound.protection.outlook.com [52.101.69.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C92183C12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Dec 2025 09:10:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/Ds59H9kklvB3xwtqIxfukPxTetboEWdAJhA4VStE4hPj51FrDpF91Hx9cZSjNAxDgaUD7iAb2Ow9IxdP0oRajUQxjnXKSQ8ylsCqDKwKf1rn6cQtMDQoNOpJY5EWMmJdbQrUaN2PUNkMwgjwAhDNUN7I3VoCU3MBPQJCXbxrXFwPmhGvSs6ijGQDPsUZ++2q03lTamlHVQZzcKlTpjMIeiadBtdjWnhgmGlPeg+5XkjbSUoVKRxaDiQQCmxMVc2IOUf13mtmvJZX4UJRXruPzYaWkCrv/2/F4W5kWu/BW8HvkxfiaHFiV45OrqCOS3qEriQ6RBlW7WgGNoDnSKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgJgQRVymXqBeQe+OErAEmaPEJda2WY9JMwYGRAWT5Y=;
 b=BtrxUgdPf64nMLX52kRmnNQXOPAGqzqttB/qgu32wEWyErtfkXGrq2SKtpDTNivVPxZxpwnO0+tCudbmPUiS5HDe5mwXuf9YFfYuqSwdg0aL1xNHulIv/M4U9KTzrD8Tv6IgZ0eY7mbx8ufWgkYyJ3q6Wr0mxeoDkxnWKvj3PWZVMgvX9eZ0SA/RDhE1Sf4NLdj9WIa6JZdYu9RjE6ltuOukY3aRLWUOagk312YlAHUvQD9E42pTIeGa2u3Ut+bdu0jl+FKVAwni4cWpYJosIxF6t5hdCxhsmimffQog3xfWLoCnejgpFY9TS3YSu7Q0xXW1hVa26ChTTSsMBiSSLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GVXPR10MB8252.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:11b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sat, 20 Dec
 2025 09:10:03 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Sat, 20 Dec 2025
 09:10:03 +0000
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHcbb1WTTQGJ5yOPU2EevfUlIQYdrUkjtMAgAJx4wCAAQNpAIAAPniAgAIAuYA=
Date: Sat, 20 Dec 2025 09:10:02 +0000
Message-ID: <AS1PR10MB53923AF8E4514446B5BB8C868FB6A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
 <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <196b561a-f23e-405c-8bb1-164d4cf63752@intel.com>
 <IA3PR11MB9254A7D9E765717CC1DC5039D8A9A@IA3PR11MB9254.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB9254A7D9E765717CC1DC5039D8A9A@IA3PR11MB9254.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=516d5b26-8852-45cf-8f5d-b0a5c59cb92e;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-20T09:02:41Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GVXPR10MB8252:EE_
x-ms-office365-filtering-correlation-id: 0c94bd39-a050-434d-f857-08de3fa78f55
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?bHorZE5Tc3gyeTNGL0g0ei84aDJ4eFBQSWhFRVlQWWluTW5KSlNpc3ROZXFy?=
 =?utf-8?B?NXl2M0wzUTU2OVJNRFJIOGpXUFRYSDNvWkFXbXg3QVM5VFRGUEljRUhDMmZ3?=
 =?utf-8?B?VE82OG1VazVyYVgxcGJSVW4rZjlha3F1SThZd3Q0alFMNzhnWXlGVjZIdXM4?=
 =?utf-8?B?Q2ZubFdVdVFJZUV1c0VsQ3pwZWQ3WXl5WnlxcGh5eE5ESTZPOVJUNmxKZzdo?=
 =?utf-8?B?TEdtTFlCZ2FuaU9iQ3pwSFlFMzFmTjFLVXcwdXk2ckRzTW1zY09WYVlTUjF1?=
 =?utf-8?B?T1ZvVG9pRFc2NDA0SHU2OXB1ZDArOGsraEo3cmpaVEJnV0t4ZS90WGRPMk9E?=
 =?utf-8?B?OTE5ejZCYURxMUttdHd5WEhVc3RUNDN1bmxBMnY5bGMxM2hpMnJMNExvbUFN?=
 =?utf-8?B?UzFMTm1VeFRnaVBJNUtqVXRXMUpCTjBKeDdVdHIwblhLVVhMeVJIYXphZjk4?=
 =?utf-8?B?MjZsa2l1K2I2Rlp6dU1ZbjlPR29oOXNYRS92VHp5TGF3QUVMdmtOcENWTFJO?=
 =?utf-8?B?d2NPc3BMTWE1eEgzTEt6WnFBVkREQ1U2QkpLQ2MxalhEMTRDdUFzOCtUOHlU?=
 =?utf-8?B?U2xUOS9pbkZ3ODF6aFludTg2Qm9xRjUrYUtpbFFGZG5Jc0lLTW1ySzZCZG11?=
 =?utf-8?B?WUFiU09HQnFPVFR0SGg5QW5pQU9UdG1NdUdEMmlGZ003Y3hDei8raUVSaTIv?=
 =?utf-8?B?R3hPenVGMTFxZTUwb2pkakE4NnllNUpVaEhoZHVOSXQ1UTczeFJjQlk1U1JM?=
 =?utf-8?B?K3FHWndyU0IwS2xJeTRsUE5mSEFJQXJTTjRNTkJDZlRDblZRenp1U2JZNWFt?=
 =?utf-8?B?TzAxejJLMW0va2dwQUw5dGN1VnhLK2NJVWh2dW9lWTVyUm44VEJWVi9YcHBM?=
 =?utf-8?B?TjhydFNqS1RFTDJSOTdRZVE5cFJjZ1UzSWNiUG9zZDhHUEh4b2hrQW80VmhB?=
 =?utf-8?B?TUZhbVI4ZUd4WnBDbHVCb2RKRTh6RXhaMHV0UVFyRnZ6VkFrNm1LV1dHTURQ?=
 =?utf-8?B?SWpXK05CcDNxODlJd21XU2hKd0QwNllyWkNQcGZDTFFma2NEVUx5MUQ2amls?=
 =?utf-8?B?YWFvdS8yNnRHOWRnUjBjdjBkOCtMK0tRb2tEVm5JZEJTdWJPVk9haFdoSXhP?=
 =?utf-8?B?STBnSjFNSnl0UUIvUzF6S2RqdndiT0dyRG5mcVUzcXVNZGdPbUFaRWM2cWlx?=
 =?utf-8?B?MmVka2VtZFV4L3VuWEdiTHZXb3lTR2JVZWNndkVTWGtDWTVxSG42b0cxOWZm?=
 =?utf-8?B?ZzdRdjBCNnh5UXJIL0h0ZjJjby9sV0NaOFlObVR6YjZVYWtTRjlBMVhma1JV?=
 =?utf-8?B?U3NUdEhCWW94SGUwVFlVUGRlUkN2ZnFFZjNid0tRZE9zM1Zjejlza0xUb2Iz?=
 =?utf-8?B?VzQ1RGRDN1hQVTFhYXhRR3NCdnVEOFZ5cHVRNmMwNTRKaUp0TFJyR2xBdnpE?=
 =?utf-8?B?cWlvM3Zia0FCbytmeGMrcmozemdOZFJ0QUxMTHI1Tlk3cTdWRUVrTWpqOUc5?=
 =?utf-8?B?WjhIVzJQWlRHaWNMMW1JOW11VCtNbWd6SjFwT0lkS1ZmTnEySmw0NW5qNWxl?=
 =?utf-8?B?akl2L1VLN3FyY003c1dOVk90NnF4NEQvTEU2dDRXbGpBckJXR2NxQTdEYVNp?=
 =?utf-8?B?MkdYcFZVQ3Q5aVQ4V2xmMCt0OVl6N2hZcENwaCtuaDFmUUdiNE9PcXNkc3g4?=
 =?utf-8?B?WUxVNHBVa2lOa0RaVTBCc0N5UVhPM0xqQ243YmtwUjNmWlpjOTRrOW5TRDlD?=
 =?utf-8?B?SExYQ05oamdZZTAyN0lLSWV2aU1lSlRQcGFML2kwaVBxTi9iNFE4SHBXaDl6?=
 =?utf-8?B?NE9PY3FBS2tLQUFHb01nOXdLRFo2VXMyV1YyNVFoS1o4S0xEc2dLMktYYWZj?=
 =?utf-8?B?eXFweDBPUVpBejdPa2xPNnFYZStPMVlTVUxEWlV4VE1TT1E3Zy91UmRia3pp?=
 =?utf-8?B?MXVFbExKV3dmTG1hOTB0WHhQd3FpeEpUNkwrWkcvSzIxM0d3QmF4QStPVzV3?=
 =?utf-8?B?Q3VVbC9XOTNKdTRuUmRYUm1OdU1HeXhZVnczdEdEZ1ByOHRtTTJ3UEt6YmF2?=
 =?utf-8?B?cWpSZzJNRmdxVUF3MXNIM0J1S3JZY2hqaGtLdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXZodmF4a2ROS1Q3ZmtQSkgvRmw3Si90K2tid09SRC91Mnpwak4xdEg0Kzdr?=
 =?utf-8?B?ZHV4bTVOeGplcmJNV21lc3NFTFRDTkMxNGFKT3loV29BUVpXS3VqUFhoVmVx?=
 =?utf-8?B?SW9FNDRwTXpMcnhXNzRaWWJKSnY1anV2VTBuNXRMb2E4aUVCejA3UDBpZy9W?=
 =?utf-8?B?R2NzaW9yZm9CTFo0Q1FZMUZKOWRkTzdhMnlUTGc1MGhLRy9nM0xFeGJoelFR?=
 =?utf-8?B?MzlGeHhlZmlsNjNRdG93Q2loMzA4dDZxTVJ1NVI0cDQvYTJ6U2U4SCtlM2da?=
 =?utf-8?B?a0RoZ3Fkb0tTekZUQTAyaTdqSThNdmJqTEorRTZ2ZzhEUnh2WUxJQkVzOHBQ?=
 =?utf-8?B?NHNkWUNocitZNGtUMDFMZ0UxZ25CNmJlZkgxcEc0TFl1MmZUYWRDK2s5b1Br?=
 =?utf-8?B?QnErVW41MHAzSm8vWkpIWUludW9PdEJ2Mmt0TTdSREt6enBaWktRRVFMdktx?=
 =?utf-8?B?UDNQbmNVM1BCajlLemNqVWkvQldXU2dZUzJna2VySmoyOHNYUjZzZFRGVENj?=
 =?utf-8?B?UC9EN0RLejg4NUVpaUE4bTdST0dVSU1PU2RZQXJHaHJtNXIzVld6VDhCZUht?=
 =?utf-8?B?SmNGT3ppejZPNy9Cbkd0WTFxQkIvSENhdW1zT0l5bDBIMWNQaDFBaFd6V01M?=
 =?utf-8?B?MHBtUGZWTTdIOGUvM3dmWGJ6TlVGcjNjZDRxdUwrRFNCMGVmWEVNMEdWMGRz?=
 =?utf-8?B?WjRBZlNVLzJFZy8wazNVcmQxMjl4T2N4OW5aVE1tTTZRckJsNktyT2hvSU1r?=
 =?utf-8?B?MThLbnUzMjdkYThSUWI2SllQb3U5WTUyRmVOWERiUGExTFFHZ3lmRzh2MzBU?=
 =?utf-8?B?ME1kWVZJTEZtQlJ3UlBFMGUrb1lJZHQxd2NEVml0dnl4VzQ3WTVVZ1p2azZ6?=
 =?utf-8?B?V1pqTDlyZHNNV3cwaVpYWTR1MnlIVFEyRG1CaUpZWUpHSlZzTWxFT2t3Mmhh?=
 =?utf-8?B?V3F0SGErdWMzMzB4M3IrKzBGTTlBMjRweUZqdURhaVlCeFhIUUN0cDZUNzV2?=
 =?utf-8?B?Y3YvN2Q5SnppRXRielArM0dJcHAzTHQ2VGRKd2ZTVXVLTkpDanZncjYybFFo?=
 =?utf-8?B?VnRJMko2M0NqMnBkbmV4TVdSUzdaS2diVnk2RFp0Y0lGeHlNcDliOHpUc096?=
 =?utf-8?B?TTc3RGp6dld6ZWpjT1lKeGFpZ2xyUG9kSUJKMTBUcFIyZ09HVXkwTEJVam1s?=
 =?utf-8?B?Q1Z3SE1BOGwzMnM2OCsrU05YL1VOK2tvRk9td0I5Q2JGbDJ3VzhOcm9SVkZ2?=
 =?utf-8?B?YVY1UGN2amduaE0rZjI5Q3VTcXhUaXV6dTRjU0NGeDdhY0N0aGNwOXgwZWk2?=
 =?utf-8?B?SDBYZmQ3VStsWG1sekpRR0VBejhFNE5JclMvRnRlTDYyOHlYZHRIeUFXbzhV?=
 =?utf-8?B?aXpNczdaM2lid3RVSWREcHNCS3JtZWRmNSswMS9YNXlCSE5tdmJ1RkFYdmVa?=
 =?utf-8?B?WlhJR2gvcTFhWlhac0VOUDQ1VzZxc0tINUw4cjBlYys3WEwreVNpSGw4YzhL?=
 =?utf-8?B?elRsTVZ3end3UWdtK0hGeW5GbDZoSGQzWHVqT3dwLzFrcGJmcU1KQytReVpX?=
 =?utf-8?B?YmY5enBOMlBCY0hOSHNCajRKVFl3MFVYUzVMeWVsdzJreWFFNncrV21UMW1C?=
 =?utf-8?B?M3QxSXpNNjJHNHFDVGVRTzViSTcvRStVbVczYXhwWXV1Mko2NXRLQkd3ZGh4?=
 =?utf-8?B?TVAvL1EwNWQ0Wm1nbTRxM1BqNDlya1UvcUw0MHZETW84bjVrU2RkYlV4QTZU?=
 =?utf-8?B?ZzJuUG5idG4zREVEY2VWU0VnYkl6cGlLeG9leWF1aTZISjNDUUVxQldDRWta?=
 =?utf-8?B?dW1qWTJ0bmNhZllnem85TDU1cWFUcUdTZUlENDF1R0hvN0wxMFJFSlZmWGxU?=
 =?utf-8?B?SHk4aW5NTkJTeXNCb0FQU1NIY1I0ZlBUZnB4dFp2cXBCNWtobzNNQnJWMFJh?=
 =?utf-8?B?bFBCMWNsdUFabDZzVTI5TTIxdGdBNVJHeHB5RmpGMjVDbzZkVm5QVkNDbzlS?=
 =?utf-8?B?OEJGakxPWW1ORTgwWDBIUEs5TTRTamZhS1Y0aENVRW9aZ2libDhxNmgwNnRL?=
 =?utf-8?B?YlJqQjQ4a3F5N2NnWi9FNllZeUg0b1VITEdhbXdGeFBsYVdqRkpzTDJxZWk3?=
 =?utf-8?B?aGRNS1FxdnVvZUluVVZUT1pXRDFnSEh6WlB1L0czaHAzbUloMFNVcDdLeGZ4?=
 =?utf-8?B?NXhKdHlKd01ZaTk0MmZqd0NwdmlkYzhtYTJPMFl0N0huNnpPYStEV3d2TWx3?=
 =?utf-8?B?TVY0dC9sN1pKNWlvYkVnKzlrc2xiTWNiamk2a0RlSUhJSFJjUmFZMzd3cm84?=
 =?utf-8?B?R3pkZXFPblduTDZVWTRUWWZnbzNUWk43TTA1dlRzOC9QM1dydGp0dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c94bd39-a050-434d-f857-08de3fa78f55
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2025 09:10:02.9978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: THN5w2GdU9xrSAg+Iz5QTk2BRIBLbeZfgYaZntmljVWerr3CPwxmBODyQLo57z8JIXFQNd4g9+5xhEsG7XBfQfyQrLbpDZyh532YtflcOxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR10MB8252
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JgJgQRVymXqBeQe+OErAEmaPEJda2WY9JMwYGRAWT5Y=;
 b=z8GD1fCocCcrvJWgMkmQb61gaBffRbq3tzJOJxnoJPmaQEg45+uCIgfZSce6lO4D61/OMeCyvUCh1/D1RZSIp7dDGU2GkCnk3eVhWvkD55g9NOgl/gr0YhFYcTRuNXK2UeOMFE6m1sYS14ZpY3G0SamYvGgt1j96AWdQQWSDIFwbbh42FuQSPfdD6fnXPZNs2oyJbZxgS/AM6sn4zVe4kAwgS53MpOtMoC6+NxhDWikOCMy1aURkRCoE90MwTTXNS7UFxZXSIG4Bjs4E7aYXjOcDKxsUmof54PIPk+P8EcOMUHZ7ZUTxrM7MVzLmTocE+iU30hSt6bAvz+3OJFSUCQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=z8GD1fCo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2lhbmcNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb25nLCBZ
b29uZyBTaWFuZyA8eW9vbmcuc2lhbmcuc29uZ0BpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwg
RGVjZW1iZXIgMTksIDIwMjUgMzoyOCBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhv
bnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgQmVoZXJhLCBWaXZlayAoREkgRkENCj4gRFNQIElDQyBQ
UkMxKSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPjsgS3dhcHVsaW5za2ksIFBpb3RyDQo+IDxw
aW90ci5rd2FwdWxpbnNraUBpbnRlbC5jb20+OyBMb2t0aW9ub3YsIEFsZWtzYW5kcg0KPiA8YWxl
a3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2Vs
bGVyQGludGVsLmNvbT47DQo+IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3pl
bEBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgaG9y
bXNAa2VybmVsLm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3
bC1uZXQgdjhdIGlnYzogRml4IHRyaWdnZXIgb2YgaW5jb3JyZWN0IGlycSBpbg0KPiBpZ2NfeHNr
X3dha2V1cCBmdW5jdGlvbg0KPiANCj4gT24gRnJpZGF5LCBEZWNlbWJlciAxOSwgMjAyNSA2OjQ0
IEFNLCBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IHdy
b3RlOg0KPiA+T24gMTIvMTcvMjAyNSAxMToyMSBQTSwgQmVoZXJhLCBWSVZFSyB3cm90ZToNCj4g
Pj4gSGVsbG8gY29sbGVhZ3VlcywNCj4gPj4NCj4gDQo+IFsuLi5dDQo+IA0KPiA+Pj4+DQo+ID4+
Pj4gVGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIGlzc3VlIHdoZXJlIHRoZSBpZ2NfeHNrX3dha2V1
cCBmdW5jdGlvbg0KPiA+Pj4+IHdhcw0KPiA+Pj4gdHJpZ2dlcmluZyBhbiBpbmNvcnJlY3QgSVJR
IGZvciB0eC0wIHdoZW4gdGhlIGkyMjYgaXMgY29uZmlndXJlZA0KPiA+Pj4gd2l0aCBvbmx5IDIg
Y29tYmluZWQgcXVldWVzIG9yIGluIGFuIGVudmlyb25tZW50IHdpdGggMiBhY3RpdmUgQ1BVIGNv
cmVzLg0KPiA+Pj4+IFRoaXMgcHJldmVudGVkIFhEUCBaZXJvLWNvcHkgc2VuZCBmdW5jdGlvbmFs
aXR5IGluIHN1Y2ggc3BsaXQgSVJRDQo+ID4+PiBjb25maWd1cmF0aW9ucy4NCj4gPj4+Pg0KPiA+
Pj4+IFRoZSBmaXggaW1wbGVtZW50cyB0aGUgY29ycmVjdCBsb2dpYyBmb3IgZXh0cmFjdGluZyBx
X3ZlY3RvcnMgc2F2ZWQNCj4gPj4+PiBkdXJpbmcgcngNCj4gPj4+IGFuZCB0eCByaW5nIGFsbG9j
YXRpb24gYW5kIHV0aWxpemVzIGZsYWdzIHByb3ZpZGVkIGJ5IHRoZQ0KPiA+Pj4gbmRvX3hza193
YWtldXAgQVBJIHRvIHRyaWdnZXIgdGhlIGFwcHJvcHJpYXRlIElSUS4NCj4gPj4+Pg0KPiANCj4g
VGhhbmsgeW91LCBWaXZlaywgZm9yIHRoZSBmaXguDQo+IE92ZXJhbGwsIHlvdXIgcGF0Y2ggbG9v
a3MgZ29vZCB0byBtZSwganVzdCBzb21lIG1pbm9yIGNoYW5nZXMgYXJlIG5lZWRlZC4NCj4gDQo+
ID4+Pj4gRml4ZXM6IGZjOWRmMmEwYjUyMCAoImlnYzogRW5hYmxlIFJYIHZpYSBBRl9YRFAgemVy
by1jb3B5IikNCj4gPj4+PiBGaXhlczogMTVmZDAyMWJjNDI3ICgiaWdjOiBBZGQgVHggaGFyZHdh
cmUgdGltZXN0YW1wIHJlcXVlc3QgZm9yDQo+ID4+Pj4gQUZfWERQIHplcm8tY29weSBwYWNrZXQi
KQ0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIEJlaGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1l
bnMuY29tPg0KPiA+Pj4+IFJldmlld2VkLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmtlbGxlckBp
bnRlbC5jb20+DQo+ID4+Pj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBsb2t0aW5vdiA8YWxla3Nh
bmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4+Pj4gUmV2aWV3ZWQtYnk6IFByemVteXNsYXcg
S2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPj4+PiBSZXZpZXdlZC1i
eTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiA+DQo+ID5Vbmxl
c3MgeW91IGhhdmUgcmVjZWl2ZWQgYSBSZXZpZXdlZC1ieSB0YWcgZXhwbGljaXRseSBmcm9tIHRo
ZSBwZXJzb24sDQo+ID55b3Ugc2hvdWxkbid0IGFkZCBpdC4NCk9rYXkuIE5vdGVkDQo+ID4NCj4g
Pi4uLg0KPiA+DQo+ID4+Pj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWlu
LmMgfCA5MA0KPiA+Pj4+ICsrKysrKysrKysrKysrKysrKy0tLS0tIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfcHRwLmMgIHwNCj4gPj4+PiAyICstDQo+ID4+Pj4gMiBmaWxlcyBj
aGFuZ2VkLCA3MyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkNCj4gPj4+Pg0KPiA+Pj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0K
PiA+Pj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4gPj4+
PiBpbmRleCA3YWFmYTYwYmEwYzguLjc2ZTQ3OTBiZDNjMCAxMDA2NDQNCj4gPj4+PiAtLS0gYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPiA+Pj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ID4+Pj4gQEAgLTY5MDgs
MjEgKzY5MDgsMTMgQEAgc3RhdGljIGludCBpZ2NfeGRwX3htaXQoc3RydWN0IG5ldF9kZXZpY2UN
Cj4gPj4+PiAqZGV2LCBpbnQNCj4gPj4+IG51bV9mcmFtZXMsDQo+ID4+Pj4gCXJldHVybiBueG1p
dDsNCj4gPj4+PiB9DQo+ID4+Pj4NCj4gPj4+PiAtc3RhdGljIHZvaWQgaWdjX3RyaWdnZXJfcnh0
eHFfaW50ZXJydXB0KHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlciwNCj4gPj4+PiAtCQkJCQlz
dHJ1Y3QgaWdjX3FfdmVjdG9yICpxX3ZlY3RvcikNCj4gPj4+PiAtew0KPiA+Pj4+IC0Jc3RydWN0
IGlnY19odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+ID4+Pj4gLQl1MzIgZWljcyA9IDA7DQo+ID4+
Pj4gLQ0KPiA+Pj4+IC0JZWljcyB8PSBxX3ZlY3Rvci0+ZWltc192YWx1ZTsNCj4gPj4+PiAtCXdy
MzIoSUdDX0VJQ1MsIGVpY3MpOw0KPiA+Pj4+IC19DQo+ID4+Pj4gLQ0KPiA+Pj4+IGludCBpZ2Nf
eHNrX3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFn
cykgIHsNCj4gPj4+PiAJc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyID0gbmV0ZGV2X3ByaXYo
ZGV2KTsNCj4gPj4+PiArCXN0cnVjdCBpZ2NfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0KPiA+Pj4+
IAlzdHJ1Y3QgaWdjX3FfdmVjdG9yICpxX3ZlY3RvcjsNCj4gPj4+PiAJc3RydWN0IGlnY19yaW5n
ICpyaW5nOw0KPiA+Pj4+ICsJdTMyIGVpY3MgPSAwOw0KPiA+Pj4+DQo+ID4+Pj4gCWlmICh0ZXN0
X2JpdChfX0lHQ19ET1dOLCAmYWRhcHRlci0+c3RhdGUpKQ0KPiA+Pj4+IAkJcmV0dXJuIC1FTkVU
RE9XTjsNCj4gPj4+PiBAQCAtNjkzMCwxOCArNjkyMiw4MCBAQCBpbnQgaWdjX3hza193YWtldXAo
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwNCj4gPj4+PiB1MzINCj4gPj4+IHF1ZXVlX2lkLCB1MzIg
ZmxhZ3MpDQo+ID4+Pj4gCWlmICghaWdjX3hkcF9pc19lbmFibGVkKGFkYXB0ZXIpKQ0KPiA+Pj4+
IAkJcmV0dXJuIC1FTlhJTzsNCj4gPj4+Pg0KPiA+Pj4+IC0JaWYgKHF1ZXVlX2lkID49IGFkYXB0
ZXItPm51bV9yeF9xdWV1ZXMpDQo+IA0KPiBudW1fcnhfcXVldWVzIGFuZCBudW1fdHhfcXVldWVz
IGFsd2F5cyBoYXZpbmcgdGhlIHNhbWUgdmFsdWUuIFRodXMsIGl0IGlzDQo+IHNhZmUgZm9yIHlv
dSB0byBrZWVwIHRoZSBvcmlnaW5hbCBxdWV1ZV9pZCBjaGVja2luZyBhdCB0aGUgYmVnaW5uaW5n
IG9mIHRoZQ0KPiBmdW5jdGlvbiwgYXMgYmVsb3csIGFuZCByZW1vdmUgYWxsIHRoZSBvdGhlciBx
dWV1ZV9pZCBjaGVjayBpbiB5b3VyIGNvZGUuDQpZZXMuIEkgc2VlIHlvdXIgcG9pbnQuIEl0IHNo
b3VsZCBiZSBzdWZmaWNpZW50IHRvIGhhdmUgdGhpcyBjaGVjayByaWdodCBhdCB0aGUgYmVnaW5u
aW5nIG9mIHRoZSBmdW5jdGlvbiBzaW5jZQ0KSXJyZXNwZWN0aXZlIG9mIHNwbGl0IG9yIGNvbWJp
bmVkIGlycXMgdGhlIG51bWJlciBvZiB0eCBhbmQgcnggcXVldWVzIGlzIGFsd2F5cyB0aGUgc2Ft
ZQ0KPiANCj4gCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fcnhfcXVldWVzKQ0KPiAJCXJl
dHVybiAtRUlOVkFMOw0KPiANCj4gPj4+PiArCWlmICgoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSAm
JiAoZmxhZ3MgJiBYRFBfV0FLRVVQX1RYKSkgew0KPiA+Pj4+ICsJCS8qIElmIGJvdGggVFggYW5k
IFJYIG5lZWQgdG8gYmUgd29rZW4gdXAgKi8NCj4gPj4+PiArCQkvKiBjaGVjayBpZiBxdWV1ZSBw
YWlycyBhcmUgYWN0aXZlLiAqLw0KPiA+DQo+ID5uaXQ6IFRoaXMgY2FuIGp1c3QgYmUgb25lIGNv
bW1lbnQsIG5vIG5lZWQgdG8gYnJlYWsgaXQgaW50byB0d28gY29tbWVudA0KPiA+YmxvY2tzDQpP
a2F5DQo+ID4NCj4gPgkJLyogSWYgYm90aCBUWCBhbmQgUlggbmVlZCB0byBiZSB3b2tlbiB1cA0K
PiA+CQkgKiBjaGVjayBpZiBxdWV1ZSBwYWlycyBhcmUgYWN0aXZlLg0KPiA+CQkgKi8NCj4gPg0K
PiA+DQo+ID4+Pj4gKwkJaWYgKChhZGFwdGVyLT5mbGFncyAmIElHQ19GTEFHX1FVRVVFX1BBSVJT
KSkgew0KPiA+Pj4+ICsJCQkvKiBKdXN0IGdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBSeCAqLw0K
PiA+Pj4+ICsJCQlpZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcykNCj4gPj4+
PiArCQkJCXJldHVybiAtRUlOVkFMOw0KPiA+Pj4+ICsJCQlyaW5nID0gYWRhcHRlci0+cnhfcmlu
Z1txdWV1ZV9pZF07DQo+ID4+Pj4gKwkJfSBlbHNlIHsNCj4gPj4+PiArCQkJLyogVHdvIGlycXMg
Zm9yIFJ4IEFORCBUeCBuZWVkIHRvIGJlIHRyaWdnZXJlZCAqLw0KPiA+Pj4+ICsJCQl1MzIgZWlj
c190eCA9IDA7DQo+ID4+Pj4gKwkJCXUzMiBlaWNzX3J4ID0gMDsNCj4gPj4+PiArCQkJc3RydWN0
IG5hcGlfc3RydWN0ICpyeF9uYXBpOw0KPiA+Pj4+ICsJCQlzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKnR4
X25hcGk7DQo+ID4NCj4gPlRoaXMgc2hvdWxkIGJlIFJDVCwgbG9uZ2VzdCBhcmd1bWVudCB0byBz
aG9ydGVzdCwgc28gdGhlIHN0cnVjdHMgc2hvdWxkDQo+ID5iZSBmaXJzdC4NCj4gPg0KPiA+Pj4+
ICsNCj4gPj4+PiArCQkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpDQo+
ID4+Pj4gKwkJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+PiArDQo+ID4+Pj4gKwkJCWlmIChxdWV1
ZV9pZCA+PSBhZGFwdGVyLT5udW1fdHhfcXVldWVzKQ0KPiA+Pj4+ICsJCQkJcmV0dXJuIC1FSU5W
QUw7DQo+ID4+Pj4gKw0KPiA+Pj4+ICsJCQkvKiBJUlEgdHJpZ2dlciBwcmVwYXJhdGlvbiBmb3Ig
UnggKi8NCj4gPj4+PiArCQkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPiA+
Pj4+ICsJCQlpZiAoIXJpbmctPnhza19wb29sKQ0KPiA+Pj4+ICsJCQkJcmV0dXJuIC1FTlhJTzsN
Cj4gPj4+PiArCQkJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsNCj4gPj4+PiArCQkJcnhfbmFw
aSA9ICZxX3ZlY3Rvci0+bmFwaTsNCj4gPj4+PiArCQkJLyogRXh0ZW5kIHRoZSBCSVQgbWFzayBm
b3IgZWljcyAqLw0KPiA+Pj4+ICsJCQllaWNzX3J4IHw9IHJpbmctPnFfdmVjdG9yLT5laW1zX3Zh
bHVlOw0KPiANCj4gSU1ITywgIiBlaWNzX3J4ID0gcmluZy0+cV92ZWN0b3ItPmVpbXNfdmFsdWUg
IiB3aWxsIGJlIG1vcmUgcmVhZGFibGUsIGNhdXNlIHlvdQ0KPiBqdXN0IE9SIHdpdGggemVyby4N
Clllcy4gSSBhZ3JlZQ0KPiANCj4gPj4+PiArDQo+ID4+Pj4gKwkJCS8qIElSUSB0cmlnZ2VyIHBy
ZXBhcmF0aW9uIGZvciBUeCAqLw0KPiA+Pj4+ICsJCQlyaW5nID0gYWRhcHRlci0+dHhfcmluZ1tx
dWV1ZV9pZF07DQo+ID4+Pj4gKwkJCWlmICghcmluZy0+eHNrX3Bvb2wpDQo+ID4+Pj4gKwkJCQly
ZXR1cm4gLUVOWElPOw0KPiA+Pj4+ICsJCQlxX3ZlY3RvciA9IHJpbmctPnFfdmVjdG9yOw0KPiA+
Pj4+ICsJCQl0eF9uYXBpID0gJnFfdmVjdG9yLT5uYXBpOw0KPiA+Pj4+ICsJCQkvKiBFeHRlbmQg
dGhlIEJJVCBtYXNrIGZvciBlaWNzICovDQo+ID4+Pj4gKwkJCWVpY3NfdHggfD0gcmluZy0+cV92
ZWN0b3ItPmVpbXNfdmFsdWU7DQo+IA0KPiBJTUhPLCAiIGVpY3NfdHggPSByaW5nLT5xX3ZlY3Rv
ci0+ZWltc192YWx1ZSAiIHdpbGwgYmUgbW9yZSByZWFkYWJsZSwgY2F1c2UgeW91DQo+IGp1c3Qg
T1Igd2l0aCB6ZXJvLg0KPiANClNhbWUgYXMgYWJvdmUNCj4gPj4+PiArDQo+ID4+Pj4gKwkJCS8q
IENoZWNrIGFuZCB1cGRhdGUgbmFwaSBzdGF0ZXMgZm9yIHJ4IGFuZCB0eCAqLw0KPiA+Pj4+ICsJ
CQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21hcmtfbWlzc2VkKHJ4X25hcGkpKQ0KPiA+Pj4+ICsJ
CQkJZWljcyB8PSBlaWNzX3J4Ow0KPiA+Pj4+ICsJCQlpZiAoIW5hcGlfaWZfc2NoZWR1bGVkX21h
cmtfbWlzc2VkKHR4X25hcGkpKQ0KPiA+Pj4+ICsJCQkJZWljcyB8PSBlaWNzX3R4Ow0KPiA+Pj4+
ICsNCj4gPj4+PiArCQkJLyogTm93IHdlIHRyaWdnZXIgdGhlIHJlcXVpcmVkIGlycXMgZm9yIFJ4
IGFuZCBUeCAqLw0KPiA+Pj4+ICsJCQlpZiAoZWljcykNCj4gPj4+PiArCQkJCXdyMzIoSUdDX0VJ
Q1MsIGVpY3MpOw0KPiA+Pj4+ICsNCj4gPj4+PiArCQkJcmV0dXJuIDA7DQo+ID4+Pj4gKwkJfQ0K
PiA+Pj4+ICsJfSBlbHNlIGlmIChmbGFncyAmIFhEUF9XQUtFVVBfVFgpIHsNCj4gPj4+PiArCQlp
ZiAocXVldWVfaWQgPj0gYWRhcHRlci0+bnVtX3R4X3F1ZXVlcykNCj4gPj4+PiArCQkJcmV0dXJu
IC1FSU5WQUw7DQo+ID4+Pj4gKwkJLyogR2V0IHRoZSByaW5nIHBhcmFtcyBmcm9tIFR4ICovDQo+
ID4+Pj4gKwkJcmluZyA9IGFkYXB0ZXItPnR4X3JpbmdbcXVldWVfaWRdOw0KPiA+Pj4+ICsJfSBl
bHNlIGlmIChmbGFncyAmIFhEUF9XQUtFVVBfUlgpIHsNCj4gPj4+PiArCQlpZiAocXVldWVfaWQg
Pj0gYWRhcHRlci0+bnVtX3J4X3F1ZXVlcykNCj4gPj4+PiArCQkJcmV0dXJuIC1FSU5WQUw7DQo+
ID4+Pj4gKwkJLyogR2V0IHRoZSByaW5nIHBhcmFtcyBmcm9tIFJ4ICovDQo+ID4+Pj4gKwkJcmlu
ZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOw0KPiA+Pj4+ICsJfSBlbHNlIHsNCj4gPj4+
PiArCQkvKiBJbnZhbGlkIEZsYWdzICovDQo+ID4+Pj4gCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4+
PiAtDQo+ID4+Pj4gLQlyaW5nID0gYWRhcHRlci0+cnhfcmluZ1txdWV1ZV9pZF07DQo+ID4+Pj4g
LQ0KPiA+Pj4+ICsJfQ0KPiA+Pj4+ICsJLyogUHJlcGFyZSB0byB0cmlnZ2VyIHNpbmdsZSBpcnEg
Ki8NCj4gPj4+PiAJaWYgKCFyaW5nLT54c2tfcG9vbCkNCj4gPj4+PiAJCXJldHVybiAtRU5YSU87
DQo+ID4+Pj4NCj4gPj4+PiAtCXFfdmVjdG9yID0gYWRhcHRlci0+cV92ZWN0b3JbcXVldWVfaWRd
Ow0KPiA+Pj4+IC0JaWYgKCFuYXBpX2lmX3NjaGVkdWxlZF9tYXJrX21pc3NlZCgmcV92ZWN0b3It
Pm5hcGkpKQ0KPiA+Pj4+IC0JCWlnY190cmlnZ2VyX3J4dHhxX2ludGVycnVwdChhZGFwdGVyLCBx
X3ZlY3Rvcik7DQo+ID4+Pj4gLQ0KPiA+Pj4+ICsJcV92ZWN0b3IgPSByaW5nLT5xX3ZlY3RvcjsN
Cj4gPj4+PiArCWlmICghbmFwaV9pZl9zY2hlZHVsZWRfbWFya19taXNzZWQoJnFfdmVjdG9yLT5u
YXBpKSkgew0KPiA+Pj4+ICsJCWVpY3MgfD0gcV92ZWN0b3ItPmVpbXNfdmFsdWU7DQo+IA0KPiBJ
TUhPLCAiZWljcyA9IHFfdmVjdG9yLT5laW1zX3ZhbHVlIiB3aWxsIGJlIG1vcmUgcmVhZGFibGUs
IGNhdXNlIHlvdSBqdXN0IE9SDQo+IHdpdGggemVyby4NCj4gDQpTYW1lIGFzIGFib3ZlDQo+ID4+
Pj4gKwkJd3IzMihJR0NfRUlDUywgZWljcyk7DQo+ID4+Pj4gKwl9DQo+ID4+Pj4gCXJldHVybiAw
Ow0KPiA+Pj4+IH0NCj4gPj4+Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pZ2MvaWdjX3B0cC5jDQo+ID4+Pj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjX3B0cC5jDQo+ID4+Pj4gaW5kZXggYjdiNDZkODYzYmVlLi42ZDhjMmQ2Mzlj
ZDcgMTAwNjQ0DQo+ID4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19wdHAuYw0KPiA+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2Nf
cHRwLmMNCj4gPj4+PiBAQCAtNTUwLDcgKzU1MCw3IEBAIHN0YXRpYyB2b2lkIGlnY19wdHBfZnJl
ZV90eF9idWZmZXIoc3RydWN0DQo+ID4+Pj4gaWdjX2FkYXB0ZXINCj4gPj4+ICphZGFwdGVyLA0K
PiA+Pj4+IAkJdHN0YW1wLT5idWZmZXJfdHlwZSA9IDA7DQo+ID4+Pj4NCj4gPj4+PiAJCS8qIFRy
aWdnZXIgdHhyeCBpbnRlcnJ1cHQgZm9yIHRyYW5zbWl0IGNvbXBsZXRpb24gKi8NCj4gPj4+PiAt
CQlpZ2NfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIHRzdGFtcC0+eHNrX3F1ZXVlX2luZGV4
LCAwKTsNCj4gPj4+PiArCQlpZ2NfeHNrX3dha2V1cChhZGFwdGVyLT5uZXRkZXYsIHRzdGFtcC0+
eHNrX3F1ZXVlX2luZGV4LA0KPiA+Pj4+ICtYRFBfV0FLRVVQX1RYKTsNCj4gPj4+Pg0KPiANCj4g
VGhlIHByZWZlcnJlZCBsaW1pdCBvbiB0aGUgbGVuZ3RoIG9mIGEgc2luZ2xlIGxpbmUgaXMgODAg
Y29sdW1ucywgcGxlYXNlIG1vdmUNCj4gWERQX1dBS0VVUF9UWCB0byBuZXcgbGluZSBhcyBiZWxv
dzoNCj4gDQo+IAkJaWdjX3hza193YWtldXAoYWRhcHRlci0+bmV0ZGV2LCB0c3RhbXAtPnhza19x
dWV1ZV9pbmRleCwNCj4gCQkJICAgICAgIFhEUF9XQUtFVVBfVFgpOw0KT2theQ0KPiANCj4gPj4+
PiAJCXJldHVybjsNCj4gPj4+PiAJfQ0KPiA+Pj4+IC0tDQo+ID4+Pj4gMi4zNC4xDQo+ID4+Pg0K
PiA+Pj4gUmV2aWV3ZWQtYnk6IFBpb3RyIEt3YXB1bGluc2tpIDxwaW90ci5rd2FwdWxpbnNraUBp
bnRlbC5jb20+DQo+ID4+DQo+ID4+IFRoYW5rcyBmb3IgYWxsIHRoZSByZXZpZXdzLiBBcmUgdGhl
cmUgYW55IHN1Z2dlc3Rpb25zIGJlZm9yZSBJIGFkZA0KPiA+PiBuZXRkZXZAIGFuZA0KPiA+bGlu
dXgta2VybmVsQCB0byB0aGUgbGlzdCBmb3IgZnVydGhlciByZXZpZXcNCj4gPg0KPiA+Rm9yIHRo
aXMgcGF0Y2gsIEkgZG9uJ3QgdGhpbmsgSSB3b3VsZCByZS1hZGQgdGhlbS4gQXMgcGFydCBvZiBu
b3JtYWwNCj4gPnByb2Nlc3MgKGZ1dHVyZSBwYXRjaGVzKSwgeWVzLCBidXQgdGhpcyBvbmUgd2Fz
IGFza2VkIHRvIGJlIGV4Y2x1ZGVkDQo+ID53aGlsZSB0aGUga2lua3Mgb2YgdGhlIHVwc3RyZWFt
IHByb2Nlc3Mgd2VyZSB3b3JrZWQgb3V0LiBBcyB0aGlzIGlzIHRoZQ0KPiA+bGlzdCB5b3UncmUg
dGFyZ2V0aW5nIHlvdXIgcGF0Y2ggZm9yIGFuZCBJJ2xsIGJlIHNlbmRpbmcgdGhpcyB0byBuZXRk
ZXYNCj4gPmZvbGxvd2luZyBvdXIgdmFsaWRhdGlvbiwgaXQgd2lsbCBnZXQgaXRzIHJldmlldyBm
cm9tIG5ldGRldiBhdCB0aGF0IHRpbWUuDQo+ID4NCj4gPkFsc28sIGFkZGluZyBTaWFuZyB3aG8g
aXMgb25lIG9mIHRoZSBhdXRob3JzIGZyb20gdGhlIEZpeGVzOg0KPiA+DQo+IA0KPiBUaGFuayB5
b3UsIFRvbnksIGZvciBicmluZ2luZyB0aGlzIHBhdGNoIHRvIG15IGF0dGVudGlvbi4NCj4gDQo+
ID5UaGFua3MsDQo+ID5Ub255DQo+ID4+DQo+ID4+IFJlZ2FyZHMNCj4gPj4NCj4gPj4gVml2ZWsN
Cj4gDQo+IFRoYW5rcyAmIFJlZ2FyZHMNCj4gU2lhbmcNClRoYW5rcyANClZpdmVrDQo=
