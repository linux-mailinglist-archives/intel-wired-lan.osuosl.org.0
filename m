Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5EE8811B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 13:33:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E99DE4089D;
	Wed, 20 Mar 2024 12:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6L_Dwmcx8CN; Wed, 20 Mar 2024 12:33:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E6F540894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710937981;
	bh=KhP5z213JRHgg+2Y4l04p0agR635gtrVnTmlg2I++II=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iJ/6zJtN783A7GvZnM+8xY33ItJby05gn64uryBX9psUmFbmLblYOO/15DGrC48uu
	 EfzVLFW5WfH4JlepmVi+qbDZlJqamBRputJXt+zituJGsJOLqvydCghpT2HKGeq+kZ
	 AfO6jqZC8Pp5WcTsR1aSr7nfp5z9eI9f3dNJ53EbevjrPpKzuxj1mLkVSAlRPIMmB/
	 ewvdQ4Wvl5a8y1HY32spoF1MXqQFMQdg/ZdLLitjJPxGDxL3bKCzJlgyZKZwokc7o+
	 HzaWSmsUfVjwOuKUxy3K/HtkLfRER8UuRCHzA/NU8YkGRcY4ggHJur07WtLrvaBtbM
	 FtC+ExfaYsYAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E6F540894;
	Wed, 20 Mar 2024 12:33:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65E821BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 12:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 519DB60676
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 12:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E8KVH-mZb4YD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 12:32:57 +0000 (UTC)
X-Greylist: delayed 484 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 20 Mar 2024 12:32:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AFBB60625
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AFBB60625
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.11;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AFBB60625
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 12:32:55 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N9LIc-1qjpQC2DWG-015dwE; Wed, 20
 Mar 2024 13:18:48 +0100
Message-ID: <4b8ee072-70bc-4a0a-8e43-e244f8ee2f22@web.de>
Date: Wed, 20 Mar 2024 13:18:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>,
 kernel-janitors@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:PTUuB43Z3DS7y5k1LlzvJWE5GpgoYr2z888JWO4A8Mid5gKORZl
 MkpJK4sPj0ibCEfU/Pw4f5+CIFy2gNMghqQLHOhx/qdJ2joepGCvIS4FT/vzNi3ZISYJm5m
 W0rWME1EqkcsjFu2+pZtTZTKhWraCRg+epsZkoQ6DCHkmtw8Mxj9kbPwzJj8jb9ofEii8JW
 9eLlGudzZsRxA81ao1Igw==
UI-OutboundReport: notjunk:1;M01:P0:I/COkzrdeRM=;q6ywcjjufhBAyy/52jzodOn5/r0
 GSS4Vh4hH9B2zcNwlsWf6O+HsZwdZ7L/aH60pv0JzXw6rtXreVBY3boo27BqZSQJW1OC0iJJ5
 zrhvHu4KA25genAPnGpk9VoJCecPJPSqyndPYSiiimFi3icsDDB+t4QWv+uPGfFweZ9x7ylcp
 ILy+L0iwHtTlavA7dhkUnM69nCEYNLBdz7w49uz+LD8eAaJVkCEKl79i8udgNFju5/mDkPINL
 xS+4vTW/MrKo8kTzhg5uiCNFd/cVs0WKrPEJ6cKbhI5GO9nZhII1BRiZw3w6n1R2fXm0ASAx0
 P5ja5y+aIu07hAW4GmX6fkFfb+oNVD1pE6BIPy1n93zHPAcuPRvTgYDTGENXo/d0VpZmyupxP
 Ig33Dh3va/p8JmdwDNX1CHHNHdt6DAAUksGgTBiXl44fSyTHMgxBCQgvAeW5M9EBTrYA9r/Ii
 P0kC07s1sjkBYWHsZvEo4e7Ulp335gjgtmH4za/hTCLfOQBM8xNV0CwcHf/kj4dRTJDqtwEnP
 /lnppqPS7kWKpoUARE/17+at6eCzANbH4uOaM+z5UNtWOZ8bgn9L6ywT0u9aJze2Q2jBUlNEy
 00uJpVuaW979Aj0jICPJZLPmShJVXnP4OpiEdWE8SMVmRygeSEKZXyaxBbzdeiZ6JJ9UD4iNj
 G+20dv/DXGrQQUxHLSEnU/4AxkWZrV1tPM9mC3epcFHkl/GQPY+NikfLtWCFzmgZ4c0ymj1ep
 FK3dwYVrsEuUJK3KJbYKHTvBX6F4HOMgUxUyzVMNN/eonX6pflgQbnQ7tD/WtIfNzqwVtjZFn
 lSKd/G7oTSQa0OC6tpVfrrmcWcaRXVgIIDCtRVXAXkbJI=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1710937973; x=1711542773; i=markus.elfring@web.de;
 bh=KhP5z213JRHgg+2Y4l04p0agR635gtrVnTmlg2I++II=;
 h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
 In-Reply-To;
 b=uKzeO9Rck+sh1+twjJYM5Z8gmlGzv2YtFvWXYYz6P1m7T5buiGATOxrrKAiiMV0D
 EORYfKdcJheLTgDTUO9fVz6FIR5hluZ06p5Hr0oA2Hc7Rc7h+wxO8YkWAjhIYH34r
 lkn0QFVXL4rrWZIM1JYOiQJmX/VnD/Zheu6bXQpl9X29NfIgCGwQOY3Z9SLbKQ9TG
 vVDEdUuf3MxIpclIF6DTHt100VTh4csobr5gnlyk4na6KIzPBv1lCzD6qBiZLvGa2
 ofVmBcUFCixruXHr81gwTOb0G1p4RdlsqeQ1KXgQ5fHr5Ld7UMlanrt6843Txj0Kx
 UctDiird1cQOdHrZwQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=uKzeO9Rc
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
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
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, LKML <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Automatically cleaned up pointers need to be initialized before exiting
> their scope.  In this case, they need to be initialized to NULL before
> any return statement.

I suggest to reconsider such information a bit more.


=E2=80=A6
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1002,8 +1002,8 @@ static void ice_get_itr_intrl_gran(struct ice_hw *=
hw)
>   */
>  int ice_init_hw(struct ice_hw *hw)
>  {
> -	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
> -	void *mac_buf __free(kfree);
> +	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =3D NULL;
> +	void *mac_buf __free(kfree) =3D NULL;
>  	u16 mac_buf_len;
>  	int status;

How do you think about to reduce the scope for affected local variables in=
stead
with the help of a small script (like the following) for the semantic patc=
h language?


@movement1@
attribute name __free;
@@
-struct ice_aqc_get_phy_caps_data *pcaps __free(kfree);
 ... when any
+struct ice_aqc_get_phy_caps_data *
 pcaps
+__free(kfree)
 =3D kzalloc(sizeof(*pcaps), ...);

@movement2@
attribute name __free;
@@
-void *mac_buf __free(kfree);
 ... when any
+void *
 mac_buf
+__free(kfree)
 =3D kcalloc(2, sizeof(struct ice_aqc_manage_mac_read_resp), ...);


Regards,
Markus
